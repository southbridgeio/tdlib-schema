module TD::Types
  # The link is a link to a language pack.
  # Call getLanguagePackInfo with the given language pack identifier to process the link.
  #
  # @attr language_pack_id [TD::Types::String] Language pack identifier.
  class InternalLinkType::LanguagePack < InternalLinkType
    attribute :language_pack_id, TD::Types::String
  end
end
