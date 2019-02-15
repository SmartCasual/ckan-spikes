# Abstract class
module Gemini
  module Validators
    class Validator
      class << self
        def validate(xml_doc)
          print "Validating against #{name}.. "

          errors = new(xml_doc).errors

          puts errors.any? ? "failed" : "passed"

          errors.each do |error|
            puts "#{error.line}: #{error.message}"
          end
        end
      end

      def initialize(xml_doc)
        @xml_doc = xml_doc
      end

    private

      attr_reader :xml_doc
    end
  end
end
