require_relative "validator"

module Gemini
  module Validators
    class ISO19139 < Validator
      def errors
        path = File.join(File.dirname(__FILE__), "../schemas/iso19139eden/gmx_and_srv.xsd")
        xsd = Nokogiri::XML::Schema(File.open(path))

        path = File.join(File.dirname(__FILE__), "../schemas/ISOTS19139A1Constraints_v1.4.sch")
        schematron_xml = Nokogiri::XML(File.open(path))
        schematron = SchematronNokogiri::Schema.new(schematron_xml)

        xsd.validate(xml_doc) + schematron.validate(xml_doc)
      end
    end
  end
end
