module TD::Types
  # The link is a link to a Telegram message or a forum topic.
  # Call getMessageLinkInfo with the given URL to process the link, and then open received forum topic or chat and show
  #   the message there.
  #
  # @attr url [TD::Types::String] URL to be passed to getMessageLinkInfo.
  class InternalLinkType::Message < InternalLinkType
    attribute :url, TD::Types::String
  end
end
