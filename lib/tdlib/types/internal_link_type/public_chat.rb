module TD::Types
  # The link is a link to a chat by its username.
  # Call searchPublicChat with the given chat username to process the link If the chat is found, open its profile
  #   information screen or the chat itself.
  # If draft text isn't empty and the chat is a private chat with a regular user, then put the draft text in the input
  #   field.
  #
  # @attr chat_username [TD::Types::String] Username of the chat.
  # @attr draft_text [TD::Types::String] Draft text for message to send in the chat.
  # @attr open_profile [Boolean] True, if chat profile information screen must be opened; otherwise, the chat itself
  #   must be opened.
  class InternalLinkType::PublicChat < InternalLinkType
    attribute :chat_username, TD::Types::String
    attribute :draft_text, TD::Types::String
    attribute :open_profile, TD::Types::Bool
  end
end
