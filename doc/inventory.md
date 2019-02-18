# Reading records from an Inventory XML file

The Ruby script `inventory.rb` is a proof of concept for reading Inventory XML files.

This is a distinct format from GEMINI and others, and a single XML file contains all the metadata required
to put together a dataset.

The proof of concept demonstrates the validating and parsing of some typical information from the XML file.
Continuing this on would require some additional parsing as per https://github.com/alphagov/ckanext-datagovuk/blob/waf-fix/ckanext/datagovuk/lib/inventory.py

## Sample output

```
$ ruby inventory.rb
Publisher: http://opendatacommunities.org/id/unitary-authority/north-somerset
Found 57 datasets:
-- test
-- Found 5 resources:
---- test
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/Download/finance/test
---- Test
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/download/finance/test/test/CSV?version=18/02/2019
---- Test
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/download/finance/test/test/XML?version=18/02/2019
---- Test
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/api/finance/test/test?format=JSON
---- Test
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/api/finance/test/test?format=XML

-- Procurement Card Transactions
-- Found 5 resources:
---- Procurement Card Transactions
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/Download/finance/procurement-card-transactions
---- Procurement card transactions
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/download/finance/procurement-card-transactions/procurement-card-transactions/CSV?version=18/02/2019
---- Procurement card transactions
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/download/finance/procurement-card-transactions/procurement-card-transactions/XML?version=18/02/2019
---- Procurement card transactions
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/api/finance/procurement-card-transactions/procurement-card-transactions?format=JSON
---- Procurement card transactions
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/api/finance/procurement-card-transactions/procurement-card-transactions?format=XML

-- Expenditure exceeding £250

-- Found 5 resources:
---- Expenditure exceeding £250
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/Download/finance/expenditure-exceeding-250
---- Expeniture exceeding £500 Apr 13 - 14
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/download/finance/expenditure-exceeding-250/expeniture-exceeding-500-apr-13-14/CSV?version=18/02/2019
---- Expeniture exceeding £500 Apr 13 - 14
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/download/finance/expenditure-exceeding-250/expeniture-exceeding-500-apr-13-14/XML?version=18/02/2019
---- Expeniture exceeding £500 Apr 13 - 14
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/api/finance/expenditure-exceeding-250/expeniture-exceeding-500-apr-13-14?format=JSON
---- Expeniture exceeding £500 Apr 13 - 14
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/api/finance/expenditure-exceeding-250/expeniture-exceeding-500-apr-13-14?format=XML

-- Contracts

-- Found 5 resources:
---- Contracts
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/Download/finance/contracts
---- Contracts
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/download/finance/contracts/contracts/CSV?version=18/02/2019
---- Contracts
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/download/finance/contracts/contracts/XML?version=18/02/2019
---- Contracts
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/api/finance/contracts/contracts?format=JSON
---- Contracts
---- Found 1 rendition(s):
------ http://data.n-somerset.gov.uk/api/finance/contracts/contracts?format=XML

etc..
```
