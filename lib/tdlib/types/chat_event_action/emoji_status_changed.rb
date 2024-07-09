module TD::Types
  # The chat emoji status was changed.
  #
  # @attr old_emoji_status [TD::Types::EmojiStatus, nil] Previous emoji status; may be null if none.
  # @attr new_emoji_status [TD::Types::EmojiStatus, nil] New emoji status; may be null if none.
  class ChatEventAction::EmojiStatusChanged < ChatEventAction
    attribute :old_emoji_status, TD::Types::EmojiStatus.optional.default(nil)
    attribute :new_emoji_status, TD::Types::EmojiStatus.optional.default(nil)
  end
end
