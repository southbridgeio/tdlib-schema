module TD::Types
  # Some language pack strings have been updated.
  #
  # @attr localization_target [TD::Types::String] Localization target to which the language pack belongs.
  # @attr language_pack_id [TD::Types::String] Identifier of the updated language pack.
  # @attr strings [Array<TD::Types::LanguagePackString>] List of changed language pack strings; empty if all strings
  #   have changed.
  class Update::LanguagePackStrings < Update
    attribute :localization_target, TD::Types::String
    attribute :language_pack_id, TD::Types::String
    attribute :strings, TD::Types::Array.of(TD::Types::LanguagePackString)
  end
end
