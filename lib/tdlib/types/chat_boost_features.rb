module TD::Types
  # Contains a list of features available on the first chat boost levels.
  #
  # @attr features [Array<TD::Types::ChatBoostLevelFeatures>] The list of features.
  # @attr min_profile_background_custom_emoji_boost_level [Integer] The minimum boost level required to set custom
  #   emoji for profile background.
  # @attr min_background_custom_emoji_boost_level [Integer] The minimum boost level required to set custom emoji for
  #   reply header and link preview background; for channel chats only.
  # @attr min_emoji_status_boost_level [Integer] The minimum boost level required to set emoji status.
  # @attr min_chat_theme_background_boost_level [Integer] The minimum boost level required to set a chat theme
  #   background as chat background.
  # @attr min_custom_background_boost_level [Integer] The minimum boost level required to set custom chat background.
  # @attr min_custom_emoji_sticker_set_boost_level [Integer] The minimum boost level required to set custom emoji
  #   sticker set for the chat; for supergroup chats only.
  # @attr min_speech_recognition_boost_level [Integer] The minimum boost level allowing to recognize speech in video
  #   note and voice note messages for non-Premium users; for supergroup chats only.
  # @attr min_sponsored_message_disable_boost_level [Integer] The minimum boost level allowing to disable sponsored
  #   messages in the chat; for channel chats only.
  class ChatBoostFeatures < Base
    attribute :features, TD::Types::Array.of(TD::Types::ChatBoostLevelFeatures)
    attribute :min_profile_background_custom_emoji_boost_level, TD::Types::Coercible::Integer
    attribute :min_background_custom_emoji_boost_level, TD::Types::Coercible::Integer
    attribute :min_emoji_status_boost_level, TD::Types::Coercible::Integer
    attribute :min_chat_theme_background_boost_level, TD::Types::Coercible::Integer
    attribute :min_custom_background_boost_level, TD::Types::Coercible::Integer
    attribute :min_custom_emoji_sticker_set_boost_level, TD::Types::Coercible::Integer
    attribute :min_speech_recognition_boost_level, TD::Types::Coercible::Integer
    attribute :min_sponsored_message_disable_boost_level, TD::Types::Coercible::Integer
  end
end
