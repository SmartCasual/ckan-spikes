# Reading records from a Resource Description Framework / Extensible Markup Language (RDF/XML) server

The Ruby script `rdf-xml.rb` is a proof of concept for reading dataset metadata from RDF/XML servers.

This is distinct from many other spikes here as it is not merely a mechanism for accessing e.g. GEMINI XML files for
later parsing, but is a graph query language which parses as part of the query.

Further work would involve clarifying and programmatically the vocabularies used for our handful of DCAT-ish RDF
endpoints, potentially speaking with publishmydata.com who seem to have their own definition of certain
generic DCAT vocabularies but don't seem to have public documentation for it that I can find.

We would also want to clarify with the departments which parts of the data they want to be displayed on DGU.

## Sample output

```
$ ruby rdf-xml.rb
#<RDF::Query::Solution:0x3fc87bce4f54({:dataset=>#<RDF::URI:0x3fc87bd1481c URI:http://opendatacommunities.org/data/housing-market/right-to-buy/receipts/letting>, :title=>#<RDF::Literal:0x3fc87b672bd0("Right To Buy - Number of Receipts by Local Authority")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87bce42e8({:dataset=>#<RDF::URI:0x3fc87c117d24 URI:http://opendatacommunities.org/data/planning/decisions/major-and-minor-development-type/all>, :title=>#<RDF::Literal:0x3fc87be0a140("Planning Applications Decisions - Major and Minor Developments, England, District by Outcome")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87bcecd80({:dataset=>#<RDF::URI:0x3fc87bdeca50 URI:http://opendatacommunities.org/data/housing-market/ratio/house-price-to-earnings>, :title=>#<RDF::Literal:0x3fc87ae84d88("House price to earnings ratio, England")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87bcdde48({:dataset=>#<RDF::URI:0x3fc87b63602c URI:http://opendatacommunities.org/data/housing-market/right-to-buy/sales/letting>, :title=>#<RDF::Literal:0x3fc87acf50a8("Right to Buy sales, England, by Local Authority area")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87bcdcf20({:dataset=>#<RDF::URI:0x3fc87b66db6c URI:http://opendatacommunities.org/data/house-building/completions/dwelling>, :title=>#<RDF::Literal:0x3fc87b650378("Housing Supply Delivery - Net additional dwellings - New build completions ")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87bcf0458({:dataset=>#<RDF::URI:0x3fc87ae1d020 URI:http://opendatacommunities.org/data/housing-market/dwelling-stock/tenure>, :title=>#<RDF::Literal:0x3fc87addd8f8("Number of dwellings by tenure and district")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87bcd73cc({:dataset=>#<RDF::URI:0x3fc87b562c04 URI:http://opendatacommunities.org/data/housing-market/right-to-buy/starts-or-acquisitions/letting>, :title=>#<RDF::Literal:0x3fc87b51f580("Right to Buy funded starts on site and acquisitions, England, by Local Authority area")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87bcd6404({:dataset=>#<RDF::URI:0x3fc87b69cb74 URI:http://opendatacommunities.org/data/house-building/starts/tenure>, :title=>#<RDF::Literal:0x3fc87b679c28("Permanent dwellings started, England, District By Tenure")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87ad492d4({:dataset=>#<RDF::URI:0x3fc87b55f5b8 URI:http://opendatacommunities.org/data/list-of-unregistered-public-sector-land>, :title=>#<RDF::Literal:0x3fc87b52fcdc("List of unregistered public sector land")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87ad482e4({:dataset=>#<RDF::URI:0x3fc87bd58670 URI:http://opendatacommunities.org/data/housing-market/supply/losses/losscatgeory>, :title=>#<RDF::Literal:0x3fc87bd386f4("Housing Supply Delivery - Losses ")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87ad44cd4({:dataset=>#<RDF::URI:0x3fc87bdb33cc URI:http://opendatacommunities.org/data/housing-market/land-registry/hpi/average-price/by-property-type>, :title=>#<RDF::Literal:0x3fc87bd81c78("Land Registry - House Price Index - Average Price, England and Regions")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87ad36634({:dataset=>#<RDF::URI:0x3fc87bdb33cc URI:http://opendatacommunities.org/data/housing-market/land-registry/hpi/average-price/by-property-type>, :title=>#<RDF::Literal:0x3fc87bd79d98("Land Registry - House Price Index - Average Price, England and Regions"@en)>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87ad56ccc({:dataset=>#<RDF::URI:0x3fc87b4e8274 URI:http://opendatacommunities.org/data/planning/units-granted-permission/all-sites>, :title=>#<RDF::Literal:0x3fc87ad5a7dc("Units granted planning permission on all sites, England")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87ad3b404({:dataset=>#<RDF::URI:0x3fc87ad8c23c URI:http://opendatacommunities.org/data/planning/decisions/major-and-minor-development-type/development-type>, :title=>#<RDF::Literal:0x3fc87ad60ec0("Planning Applications Decisions - Major and Minor Developments , England, District by Development Type")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87ad2d1ec({:dataset=>#<RDF::URI:0x3fc87b5de624 URI:http://opendatacommunities.org/data/housing-market/supply/changes/changecategory>, :title=>#<RDF::Literal:0x3fc87b5aae14("Housing Supply Delivery - Net Additions- Changes in supply")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87bcacbb8({:dataset=>#<RDF::URI:0x3fc87ae80fa8 URI:http://opendatacommunities.org/data/housing-market/help-to-buy/num-loans/loan-type>, :title=>#<RDF::Literal:0x3fc87bdbc51c("Help to Buy Equity Loan Scheme -Total Equity Loans & Equity Loans First Time Buyers")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87ad24b50({:dataset=>#<RDF::URI:0x3fc87bd71b5c URI:http://opendatacommunities.org/data/planning/npcu-case-work/decisions>, :title=>#<RDF::Literal:0x3fc87ae544f8("National Planning Casework Unit - Casework Decisions")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
#<RDF::Query::Solution:0x3fc87c14ee3c({:dataset=>#<RDF::URI:0x3fc87acf59f4 URI:http://opendatacommunities.org/data/house-building/completions/tenure>, :title=>#<RDF::Literal:0x3fc87b5fa860("Permanent dwellings completed,  England,  District By Tenure")>, :sparql=>#<RDF::URI:0x3fc87bd4cd98 URI:http://opendatacommunities.org/sparql>})>
```
