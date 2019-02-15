require "rubygems"
require "bundler/setup"
Bundler.require(:default)

require_relative "gemini/document"

xml_doc = Nokogiri::XML(File.open(File.join(File.dirname(__FILE__), "gemini/samples/50colRas.xml")))
doc = Gemini::Document.new(xml_doc)

p doc.valid_iso19139?
p doc.valid_gemini2?
