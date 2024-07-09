module TD::Types
  # The chat needs to be open with the provided internal link.
  #
  # @attr link [TD::Types::InternalLinkType] An internal link pointing to the chat.
  class TargetChat::InternalLink < TargetChat
    attribute :link, TD::Types::InternalLinkType
  end
end
