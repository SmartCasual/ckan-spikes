require_relative "validator"

module Gemini
  module Validators
    class GEMINI2 < Validator
      def errors
        path = File.join(File.dirname(__FILE__), "../schemas/Gemini2_R1r3.sch")
        schematron_xml = Nokogiri::XML(File.open(path))
        schematron = SchematronNokogiri::Schema.new(schematron_xml)

        schematron.validate(xml_doc)
      end
    end
  end
end
