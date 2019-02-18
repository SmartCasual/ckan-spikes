# http://semanticweb.org/wiki/Getting_data_from_the_Semantic_Web_%28Ruby%29

require "rubygems"
require "bundler/setup"
Bundler.require(:default)

require "rdf"
require "rdf/vocab"

# rdf_xml_url = "http://statistics.data.gov.uk/data.rdf"
rdf_xml_url = "http://opendatacommunities.org/data.rdf"

graph = RDF::Graph.load(rdf_xml_url)

query = RDF::Query.new(
  dataset: {
    RDF.type => RDF::URI("http://publishmydata.com/def/dataset#Dataset"),
    RDF::Vocab::DC.title => :title,
    RDF::Vocab::VOID.sparqlEndpoint => :sparql,
  }
)

query.execute(graph).each do |solution|
  puts solution.inspect
end
