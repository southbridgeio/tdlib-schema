module TD::Types
  # Describes a fact-check added to the message by an independent checker.
  #
  # @attr text [TD::Types::FormattedText] Text of the fact-check.
  # @attr country_code [TD::Types::String] A two-letter ISO 3166-1 alpha-2 country code of the country for which the
  #   fact-check is shown.
  class FactCheck < Base
    attribute :text, TD::Types::FormattedText
    attribute :country_code, TD::Types::String
  end
end
