module TD::Types
  # Represents one language pack string.
  #
  # @attr key [TD::Types::String] String key.
  # @attr value [TD::Types::LanguagePackStringValue] String value; pass null if the string needs to be taken from the
  #   built-in English language pack.
  class LanguagePackString < Base
    attribute :key, TD::Types::String
    attribute :value, TD::Types::LanguagePackStringValue
  end
end
