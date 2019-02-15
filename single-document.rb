require "rubygems"
require "bundler/setup"
Bundler.require(:default)

require "open-uri"

direct_url = "http://maps.bristol.gov.uk/metadata/INSPIRE/Asset%20Register%20and%20land%20ownership.xml"

puts open(direct_url).read
