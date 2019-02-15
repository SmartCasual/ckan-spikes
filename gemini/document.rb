require_relative "validators/iso19139"
require_relative "validators/gemini2"

module Gemini
  class Document
    def initialize(xml_doc)
      @xml_doc = xml_doc
      @iso19139_errors = Gemini::Validators::ISO19139.validate(xml_doc)
      @gemini2_errors = Gemini::Validators::GEMINI2.validate(xml_doc)
    end

    def valid_iso19139?
      @iso19139_errors.none?
    end

    def valid_gemini2?
      @gemini2_errors.none?
    end

    def guid
      xml_doc.at_xpath("//gmd:fileIdentifier/gco:CharacterString/text()").text
    end

  private

    attr_reader :xml_doc
  end
end
