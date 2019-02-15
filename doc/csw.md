# Reading records from a Catalogue Service for the Web (CSW)

The Ruby script `csw.rb` is a proof of concept for reading XML records from CSW servers.

## Sample output

```
$ ruby csw.rb
/Users/elliotcm/govuk/ckan-spikes/.bundle/bundler/gems/ruby-csw-df3e003d07c2/lib/rcsw/records/v2_0_2.rb:88: warning: key "modified" is duplicated and overwritten on line 97
Available functions:
- GetCapabilities
- DescribeRecord
- GetDomain
- GetRecords
- GetRecordById
- Transaction
- Harvest
Records:
Requesting http://environment.data.gov.uk/discover/ne?startPosition=1&maxRecords=100&resultType=results&ElementSetName=brief&outputFormat=application%2Fxml&outputSchema=http%3A%2F%2Fwww.isotc211.org%2F2005%2Fgmd&typeNames=csw%3ARecord&service=CSW&request=GetRecords&version=2.0.2
Requesting http://environment.data.gov.uk/discover/ne?startPosition=101&maxRecords=100&resultType=results&ElementSetName=brief&outputFormat=application%2Fxml&outputSchema=http%3A%2F%2Fwww.isotc211.org%2F2005%2Fgmd&typeNames=csw%3ARecord&service=CSW&request=GetRecords&version=2.0.2
Requesting http://environment.data.gov.uk/discover/ne?startPosition=201&maxRecords=100&resultType=results&ElementSetName=brief&outputFormat=application%2Fxml&outputSchema=http%3A%2F%2Fwww.isotc211.org%2F2005%2Fgmd&typeNames=csw%3ARecord&service=CSW&request=GetRecords&version=2.0.2
Requesting http://environment.data.gov.uk/discover/ne?startPosition=0&maxRecords=100&resultType=results&ElementSetName=brief&outputFormat=application%2Fxml&outputSchema=http%3A%2F%2Fwww.isotc211.org%2F2005%2Fgmd&typeNames=csw%3ARecord&service=CSW&request=GetRecords&version=2.0.2
<gmd:MD_Metadata xmlns:gmd="http://www.isotc211.org/2005/gmd" xmlns:gco="http://www.isotc211.org/2005/gco" xmlns:eamp="http://environment.data.gov.uk/eamp" xmlns:geonet="http://www.fao.org/geonetwork" xmlns:xlink="http://www.w3.org/1999/xlink" xmlns:gmx="http://www.isotc211.org/2005/gmx">
      <gmd:fileIdentifier>
        <gco:CharacterString>0f2ffe1a-e924-4865-8bac-a1b91a8eb77d</gco:CharacterString>
      </gmd:fileIdentifier>
      <gmd:hierarchyLevel>
        <gmd:MD_ScopeCode codeList="http://standards.iso.org/ittf/PubliclyAvailableStandards/ISO_19139_Schemas/resources/Codelist/ML_gmxCodelists.xml#MD_ScopeCode" codeListValue="dataset" codeSpace="ISOTC211/19115">dataset</gmd:MD_ScopeCode>
      </gmd:hierarchyLevel>
      <gmd:identificationInfo>
        <gmd:MD_DataIdentification>
          <gmd:citation>
            <gmd:CI_Citation>
              <gmd:title>
                <gco:CharacterString>2010 Natural England (NE) Lundy, SAC monitoring</gco:CharacterString>
              </gmd:title>
            </gmd:CI_Citation>
          </gmd:citation>
          <gmd:extent>
            <gmd:EX_Extent>
              <gmd:geographicElement>
                <gmd:EX_GeographicBoundingBox>
                  <gmd:westBoundLongitude>
                    <gco:Decimal>-4.710000000000001</gco:Decimal>
                  </gmd:westBoundLongitude>
                  <gmd:eastBoundLongitude>
                    <gco:Decimal>-4.63</gco:Decimal>

etc..
```
