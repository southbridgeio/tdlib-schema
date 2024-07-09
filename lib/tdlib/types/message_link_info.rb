module TD::Types
  # Contains information about a link to a message or a forum topic in a chat.
  #
  # @attr is_public [Boolean] True, if the link is a public link for a message or a forum topic in a chat.
  # @attr chat_id [Integer] If found, identifier of the chat to which the link points, 0 otherwise.
  # @attr message_thread_id [Integer] If found, identifier of the message thread in which to open the message, or a
  #   forum topic to open if the message is missing.
  # @attr message [TD::Types::Message, nil] If found, the linked message; may be null.
  # @attr media_timestamp [Integer] Timestamp from which the video/audio/video note/voice note/story playing must
  #   start, in seconds; 0 if not specified.
  #   The media can be in the message content or in its web page preview.
  # @attr for_album [Boolean] True, if the whole media album to which the message belongs is linked.
  class MessageLinkInfo < Base
    attribute :is_public, TD::Types::Bool
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_thread_id, TD::Types::Coercible::Integer
    attribute :message, TD::Types::Message.optional.default(nil)
    attribute :media_timestamp, TD::Types::Coercible::Integer
    attribute :for_album, TD::Types::Bool
  end
end
