module TD::Types
  # The chat's profile accent color or profile background custom emoji were changed.
  #
  # @attr old_profile_accent_color_id [Integer] Previous identifier of chat's profile accent color; -1 if none.
  # @attr old_profile_background_custom_emoji_id [Integer] Previous identifier of the custom emoji; 0 if none.
  # @attr new_profile_accent_color_id [Integer] New identifier of chat's profile accent color; -1 if none.
  # @attr new_profile_background_custom_emoji_id [Integer] New identifier of the custom emoji; 0 if none.
  class ChatEventAction::ProfileAccentColorChanged < ChatEventAction
    attribute :old_profile_accent_color_id, TD::Types::Coercible::Integer
    attribute :old_profile_background_custom_emoji_id, TD::Types::Coercible::Integer
    attribute :new_profile_accent_color_id, TD::Types::Coercible::Integer
    attribute :new_profile_background_custom_emoji_id, TD::Types::Coercible::Integer
  end
end
