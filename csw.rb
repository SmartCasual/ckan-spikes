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
      "ElementSetName" => "full",
      "outputFormat" => "application/xml",
      "outputSchema" => "http://www.opengis.net/cat/csw/2.0.2",
      "typeNames" => "csw:Record",
    }

    format = RCSW::Records::Base.new
    request_url = self.build_url(@csw_url, 'GetRecords', capabilities.version, @request_params)

    request = format.read(Curl.get(request_url).body_str)

    return false if request.records.nil? or request.records.empty?

    @request_params.merge!({ 'startPosition' => request.status.next_record })
    request
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
  puts "#{record.identifier}: #{record.title}"
end

p records.all.first
