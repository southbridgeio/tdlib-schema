module TD::Types
  # The link is a link to a chat by its username.
  # Call searchPublicChat with the given chat username to process the link.
  #
  # @attr chat_username [TD::Types::String] Username of the chat.
  class InternalLinkType::PublicChat < InternalLinkType
    attribute :chat_username, TD::Types::String
  end
end
