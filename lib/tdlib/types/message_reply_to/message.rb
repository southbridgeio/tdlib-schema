module TD::Types
  # Describes a message replied by a given message.
  #
  # @attr chat_id [Integer] The identifier of the chat to which the message belongs; may be 0 if the replied message is
  #   in unknown chat.
  # @attr message_id [Integer] The identifier of the message; may be 0 if the replied message is in unknown chat.
  # @attr quote [TD::Types::TextQuote, nil] Chosen quote from the replied message; may be null if none.
  # @attr origin [TD::Types::MessageOrigin, nil] Information about origin of the message if the message was from
  #   another chat or topic; may be null for messages from the same chat.
  # @attr origin_send_date [Integer] Point in time (Unix timestamp) when the message was sent if the message was from
  #   another chat or topic; 0 for messages from the same chat.
  # @attr content [TD::Types::MessageContent, nil] Media content of the message if the message was from another chat or
  #   topic; may be null for messages from the same chat and messages without media.
  #   Can be only one of the following types: messageAnimation, messageAudio, messageContact, messageDice,
  #   messageDocument, messageGame, messageInvoice, messageLocation, messagePaidMedia, messagePhoto, messagePoll,
  #   messagePremiumGiveaway, messagePremiumGiveawayWinners, messageSticker, messageStory, {TD::Types::MessageContent::Text}
  #   (for link preview), messageVenue, messageVideo, messageVideoNote, or messageVoiceNote.
  class MessageReplyTo::Message < MessageReplyTo
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :quote, TD::Types::TextQuote.optional.default(nil)
    attribute :origin, TD::Types::MessageOrigin.optional.default(nil)
    attribute :origin_send_date, TD::Types::Coercible::Integer
    attribute :content, TD::Types::MessageContent.optional.default(nil)
  end
end
