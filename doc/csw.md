# Reading records from a Catalogue Service for the Web (CSW)

The Ruby script `csw.rb` is a proof of concept for reading XML records from CSW servers.

Finishing this off would involve patching the client and pulling the required
information from the returned structs.

## Sample output

```
$ ruby csw.rb
Available functions:
- GetCapabilities
- DescribeRecord
- GetDomain
- GetRecords
- GetRecordById
- Transaction
- Harvest

Records:
0f2ffe1a-e924-4865-8bac-a1b91a8eb77d: 2010 Natural England (NE) Lundy, SAC monitoring
eca38916-288e-4e38-859c-8e7b5f9bbdc7: 2005 English Nature/Emu Outer Thames Estuary Sandbank Survey
207b5f8d-4ca7-4e97-85fa-33252912831a: Natural England Area Teams
4c660eee-887e-4c8b-91e5-d84b4c1078ac: Special Protection Areas (England)
9c66db03-dc16-4f0e-81c9-16ee146772ab: 2011 Natural England/Cefas Isles of Scilly SAC offshore video survey
03fea2b9-8493-4f1f-96c5-c60c0478f655: 2010 Natural England Morecambe and Lune Benthic Grab Survey
[...]
8c999286-6417-4044-af95-f56d3b677474: National Nature Reserve (NNR) areas outside Sites of Special Scientific Interest

#<OpenStruct identifier="0f2ffe1a-e924-4865-8bac-a1b91a8eb77d", title="2010 Natural England (NE) Lundy, SAC monitoring", type="dataset", subjects=["OpenData", "NEbatch3", "Habitats and biotopes", "environment"], abstract="Survey name: 2010 Natural England (NE) Lundy, SAC monitoring\nThis is a collation of surveys to gather data and evidence from a variety of marine environments. The survey purposes vary and include recommended Marine Conservation Zone (rMCZ) Phase I or II verification surveys, condition assessments, surveys of features of Natura 2000 sites (Special Area of Conservation, Special Protection Area), Intertidal surveys, Benthic grab surveys and others. All surveys are carried out to specified standards and follow established methodologies. \nAttribution statement: © Natural England copyright. Contains Ordnance Survey data © Crown copyright and database right [year]. Attribution statement: Attribution statement: © Natural England copyright. Contains Ordnance Survey data © Crown copyright and database right [year].", bounds=#<OpenStruct lower_corner="-4.63 51.14", upper_corner="-4.710000000000001 51.21">>
```
