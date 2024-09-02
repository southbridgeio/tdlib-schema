module TD::Types
  # The link is a link to a video chat.
  # Call searchPublicChat with the given chat username, and then joinGroupCall with the given invite hash to process
  #   the link.
  #
  # @attr chat_username [TD::Types::String] Username of the chat with the video chat.
  # @attr invite_hash [TD::Types::String] If non-empty, invite hash to be used to join the video chat without being
  #   muted by administrators.
  # @attr is_live_stream [Boolean] True, if the video chat is expected to be a live stream in a channel or a broadcast
  #   group.
  class InternalLinkType::VideoChat < InternalLinkType
    attribute :chat_username, TD::Types::String
    attribute :invite_hash, TD::Types::String
    attribute :is_live_stream, TD::Types::Bool
  end
end
