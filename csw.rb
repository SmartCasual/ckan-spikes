require "rubygems"
require "bundler/setup"
Bundler.require(:default)

# csw_url = "http://metadata.bgs.ac.uk/geonetwork/srv/en/csw"
csw_url = "http://environment.data.gov.uk/discover/ne"

class GetRecords < RCSW::Client::GetRecords
  # Fix a missing parameter
  # Full working URL:
  # http://environment.data.gov.uk/discover/ne?service=CSW&request=GetRecords&version=2.0.2&startPosition=1&maxRecords=100&resultType=results&ElementSetName=full&outputFormat=application%2Fxml&outputSchema=http%3A%2F%2Fwww.opengis.net%2Fcat%2Fcsw%2F2.0.2&typeNames=csw:Record
  def fetch_records
    @per_page ||= 100

    @request_params ||= {
      "startPosition" => 1,
      "maxRecords" => @per_page,
      "resultType" => "results",
      "ElementSetName" => "brief",
      "outputFormat" => "application/xml",
      "outputSchema" => "http://www.isotc211.org/2005/gmd",
      "typeNames" => "csw:Record",
    }

    format = RCSW::Records::Base.new
    request_url = self.build_url(@csw_url, 'GetRecords', capabilities.version, @request_params)

    puts "Requesting #{request_url}"

    xml_results = Nokogiri::XML(Curl.get(request_url).body_str)

    docs = xml_results.xpath("//gmd:MD_Metadata", "gmd" => "http://www.isotc211.org/2005/gmd")

    return false if docs.empty?

    next_record = xml_results.at_xpath("//csw:SearchResults")["nextRecord"]
    @request_params.merge!("startPosition" => next_record)

    Struct.new(:records).new(docs)
  end
end

client = RCSW::Client::Base.new(csw_url)
records = ::GetRecords.new(csw_url)

puts "Available functions:"
client.capabilities.each do |capability|
  puts "- #{capability.name}"
end

puts "Records:"
records.each do |record|
  puts record
end
