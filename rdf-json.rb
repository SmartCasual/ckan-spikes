# http://semanticweb.org/wiki/Getting_data_from_the_Semantic_Web_%28Ruby%29
# https://www.w3.org/TR/vocab-dcat/#class-dataset

require "rubygems"
require "bundler/setup"
Bundler.require(:default)

require "rdf"
require "rdf/vocab"

rdf_json_url = "http://uk-nationaltrust.opendata.arcgis.com/data.json"
# rdf_json_url = "https://data.cambridgeshireinsight.org.uk/data.json"

graph = RDF::Graph.load(rdf_json_url)

query = RDF::Query.new(
  dataset: {
    RDF.type => RDF::Vocab::DCAT.Dataset,
    RDF::Vocab::DC.title => :title,
    RDF::Vocab::DCAT.landingPage => :url,
  }
)

query.execute(graph).each do |solution|
  puts solution.inspect
end
