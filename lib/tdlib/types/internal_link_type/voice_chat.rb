module TD::Types
  # The link is a link to a voice chat.
  # Call searchPublicChat with the given chat username, and then joinGoupCall with the given invite hash to process the
  #   link.
  #
  # @attr chat_username [TD::Types::String] Username of the chat with the voice chat.
  # @attr invite_hash [TD::Types::String] If non-empty, invite hash to be used to join the voice chat without being
  #   muted by administrators.
  class InternalLinkType::VoiceChat < InternalLinkType
    attribute :chat_username, TD::Types::String
    attribute :invite_hash, TD::Types::String
  end
end
