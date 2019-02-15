# ISO19139 / GEMINI2 parsing

The Ruby script `gemini.rb` is a proof of concept for parsing and validating
ISO19139 or GEMINI2 files.

Finishing this off would involve implementing the xpaths as needed from
https://github.com/alphagov/ckanext-spatial/blob/waf-fix/ckanext/spatial/model/harvested_metadata.py#L145-L871

We would also want to differ between ISO19139 and GEMINI2 documents using this
field: https://guidance.data.gov.uk/publish_and_manage_data/harvest_or_add_data/harvest_data/gemini/#iso-19139

## Sample output

```
$ ruby gemini.rb
Validating against Gemini::Validators::ISO19139.. passed
Validating against Gemini::Validators::GEMINI2.. passed
Document GUID: eaaad50e-0fa9-40be-84b5-d11740297320
```
