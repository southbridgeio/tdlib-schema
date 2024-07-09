module TD::Types
  # The chat accent color or background custom emoji were changed.
  #
  # @attr old_accent_color_id [Integer] Previous identifier of chat accent color.
  # @attr old_background_custom_emoji_id [Integer] Previous identifier of the custom emoji; 0 if none.
  # @attr new_accent_color_id [Integer] New identifier of chat accent color.
  # @attr new_background_custom_emoji_id [Integer] New identifier of the custom emoji; 0 if none.
  class ChatEventAction::AccentColorChanged < ChatEventAction
    attribute :old_accent_color_id, TD::Types::Coercible::Integer
    attribute :old_background_custom_emoji_id, TD::Types::Coercible::Integer
    attribute :new_accent_color_id, TD::Types::Coercible::Integer
    attribute :new_background_custom_emoji_id, TD::Types::Coercible::Integer
  end
end
