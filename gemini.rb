require "rubygems"
require "bundler/setup"
Bundler.require(:default)

require_relative "gemini/document"

xml_doc = Nokogiri::XML(File.open(File.join(File.dirname(__FILE__), "gemini/samples/50colRas.xml")))
doc = Gemini::Document.new(xml_doc)

unless doc.valid_iso19139?
  puts "Not a valid ISO19139 document"
  exit
end

unless doc.valid_gemini2?
  puts "Not a valid GEMINI2 document"
  exit
end

puts "Document GUID: #{doc.guid}"
