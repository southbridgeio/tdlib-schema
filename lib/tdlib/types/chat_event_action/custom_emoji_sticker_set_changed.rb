module TD::Types
  # The supergroup sticker set with allowed custom emoji was changed.
  #
  # @attr old_sticker_set_id [Integer] Previous identifier of the chat sticker set; 0 if none.
  # @attr new_sticker_set_id [Integer] New identifier of the chat sticker set; 0 if none.
  class ChatEventAction::CustomEmojiStickerSetChanged < ChatEventAction
    attribute :old_sticker_set_id, TD::Types::Coercible::Integer
    attribute :new_sticker_set_id, TD::Types::Coercible::Integer
  end
end
