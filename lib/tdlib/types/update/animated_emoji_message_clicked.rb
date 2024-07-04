module TD::Types
  # Some animated emoji message was clicked and a big animated sticker must be played if the message is visible on the
  #   screen.
  # chatActionWatchingAnimations with the text of the message needs to be sent if the sticker is played.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  # @attr sticker [TD::Types::Sticker] The animated sticker to be played.
  class Update::AnimatedEmojiMessageClicked < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :sticker, TD::Types::Sticker
  end
end
