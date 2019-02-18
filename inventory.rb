require "rubygems"
require "bundler/setup"
Bundler.require(:default)

path = File.join(File.dirname(__FILE__), "inventory/schemas/inventory.xsd")
xsd = Nokogiri::XML::Schema(File.open(path))

xml_doc = Nokogiri::XML(File.open(File.join(File.dirname(__FILE__), "inventory/samples/north-somerset.xml")))

errors = xsd.validate(xml_doc)

if errors.any?
  puts "Failed to validate"
  p errors
  exit
end

puts "Publisher: #{xml_doc.at_xpath('//inv:Metadata/inv:Publisher').text}"

datasets = xml_doc.xpath("/inv:Inventory/inv:Datasets/inv:Dataset")

puts "Found #{datasets.count} datasets:"

datasets.each do |dataset|
  puts "-- #{dataset.at_xpath("inv:Title").text}"

  resources = dataset.xpath("inv:Resources/inv:Resource")

  puts "-- Found #{resources.count} resources:"
  resources.each do |resource|
    puts "---- #{resource.at_xpath("inv:Title").text.strip}"

    renditions = resource.xpath("inv:Renditions/inv:Rendition")

    puts "---- Found #{renditions.count} rendition(s):"
    renditions.each do |rendition|
      puts "------ #{rendition.at_xpath("inv:Identifier").text}"
    end
  end

  puts
end
