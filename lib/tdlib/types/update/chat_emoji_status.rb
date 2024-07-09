module TD::Types
  # Chat emoji status has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr emoji_status [TD::Types::EmojiStatus, nil] The new chat emoji status; may be null.
  class Update::ChatEmojiStatus < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :emoji_status, TD::Types::EmojiStatus.optional.default(nil)
  end
end
