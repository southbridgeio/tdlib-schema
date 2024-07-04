module TD::Types
  # The link is a link to a Telegram message.
  # Call getMessageLinkInfo with the given URL to process the link.
  #
  # @attr url [TD::Types::String] URL to be passed to getMessageLinkInfo.
  class InternalLinkType::Message < InternalLinkType
    attribute :url, TD::Types::String
  end
end
