# Reading records from a Resource Description Framework / JavaScript Object Notation (Linked Data) (RDF/JSON-LD) server

The Ruby script `rdf-json.rb` is a proof of concept for reading dataset metadata from RDF/JSON-LD servers.

Similar to `rdf-xml.rb`, except formatted in JSON, and the endpoints seem to adhere more closely to the standard DCAT "Dataset"
structure without the publishmydata.com aspect to it.

## Sample output

```
$ ruby rdf-json.rb
#<RDF::Query::Solution:0x3fce4a8d0754({:dataset=>#<RDF::Node:0x3fce4a9c1654(_:b28)>, :title=>#<RDF::Literal:0x3fce4a9c0b00("Neptune Coastline Campaign: Land Use 1965")>, :url=>#<RDF::Literal:0x3fce499e364c("http://uk-nationaltrust.opendata.arcgis.com/datasets/64c3e911034f40829d288e1cd908415a_0")>})>
#<RDF::Query::Solution:0x3fce4a8d00c4({:dataset=>#<RDF::Node:0x3fce498b8790(_:b19)>, :title=>#<RDF::Literal:0x3fce498b7c50("Neptune Coastline Campaign: Land Use 2014")>, :url=>#<RDF::Literal:0x3fce4a9c5330("http://uk-nationaltrust.opendata.arcgis.com/datasets/ab9ac11913e042dfa55f51df440fd0ac_0")>})>
#<RDF::Query::Solution:0x3fce4a8c1a10({:dataset=>#<RDF::Node:0x3fce4a9d9e34(_:b1)>, :title=>#<RDF::Literal:0x3fce4a9d8ed0("National Trust Open Data: Land - Limited Access")>, :url=>#<RDF::Literal:0x3fce49a5ae54("http://uk-nationaltrust.opendata.arcgis.com/datasets/f3cd21fd165e4e3498a83973bb5ba82f_0")>})>
#<RDF::Query::Solution:0x3fce4a8c1380({:dataset=>#<RDF::Node:0x3fce49a56ca0(_:b10)>, :title=>#<RDF::Literal:0x3fce49a560d4("National Trust Open Data: Land - Always Open")>, :url=>#<RDF::Literal:0x3fce49a1cadc("http://uk-nationaltrust.opendata.arcgis.com/datasets/202ec400dfe9471aaf257e4b6c956394_0")>})>
```
