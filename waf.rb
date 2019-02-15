require "rubygems"
require "bundler/setup"
Bundler.require(:default)

require "open-uri"

waf_url = "http://maps.bristol.gov.uk/metadata/INSPIRE/"

index = Nokogiri::HTML(open(waf_url))

links = index.xpath("//a/@href")

valid_links = links.reject { |l| l =~ %r{([/?#]|mailto:)} }

full_valid_links = valid_links.map { |l| URI.join(waf_url, l) }

xml_docs = full_valid_links.map { |l| open(l).read }

puts xml_docs
