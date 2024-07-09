module TD::Types
  # Contains a list of features available on a specific chat boost level.
  #
  # @attr level [Integer] Target chat boost level.
  # @attr story_per_day_count [Integer] Number of stories that the chat can publish daily.
  # @attr custom_emoji_reaction_count [Integer] Number of custom emoji reactions that can be added to the list of
  #   available reactions.
  # @attr title_color_count [Integer] Number of custom colors for chat title.
  # @attr profile_accent_color_count [Integer] Number of custom colors for profile photo background.
  # @attr can_set_profile_background_custom_emoji [Boolean] True, if custom emoji for profile background can be set.
  # @attr accent_color_count [Integer] Number of custom colors for background of empty chat photo, replies to messages
  #   and link previews.
  # @attr can_set_background_custom_emoji [Boolean] True, if custom emoji for reply header and link preview background
  #   can be set.
  # @attr can_set_emoji_status [Boolean] True, if emoji status can be set.
  # @attr chat_theme_background_count [Integer] Number of chat theme backgrounds that can be set as chat background.
  # @attr can_set_custom_background [Boolean] True, if custom background can be set in the chat for all users.
  # @attr can_set_custom_emoji_sticker_set [Boolean] True, if custom emoji sticker set can be set for the chat.
  # @attr can_recognize_speech [Boolean] True, if speech recognition can be used for video note and voice note messages
  #   by all users.
  # @attr can_disable_sponsored_messages [Boolean] True, if sponsored messages can be disabled in the chat.
  class ChatBoostLevelFeatures < Base
    attribute :level, TD::Types::Coercible::Integer
    attribute :story_per_day_count, TD::Types::Coercible::Integer
    attribute :custom_emoji_reaction_count, TD::Types::Coercible::Integer
    attribute :title_color_count, TD::Types::Coercible::Integer
    attribute :profile_accent_color_count, TD::Types::Coercible::Integer
    attribute :can_set_profile_background_custom_emoji, TD::Types::Bool
    attribute :accent_color_count, TD::Types::Coercible::Integer
    attribute :can_set_background_custom_emoji, TD::Types::Bool
    attribute :can_set_emoji_status, TD::Types::Bool
    attribute :chat_theme_background_count, TD::Types::Coercible::Integer
    attribute :can_set_custom_background, TD::Types::Bool
    attribute :can_set_custom_emoji_sticker_set, TD::Types::Bool
    attribute :can_recognize_speech, TD::Types::Bool
    attribute :can_disable_sponsored_messages, TD::Types::Bool
  end
end
