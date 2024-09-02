module TD::Types
  # The link is a link to a language pack.
  # Call getLanguagePackInfo with the given language pack identifier to process the link.
  # If the language pack is found and the user wants to apply it, then call setOption for the option
  #   "language_pack_id".
  #
  # @attr language_pack_id [TD::Types::String] Language pack identifier.
  class InternalLinkType::LanguagePack < InternalLinkType
    attribute :language_pack_id, TD::Types::String
  end
end
