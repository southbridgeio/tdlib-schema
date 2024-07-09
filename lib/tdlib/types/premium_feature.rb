module TD::Types
  # Describes a feature available to Premium users.
  class PremiumFeature < Base
    %w[
      increased_limits
      increased_upload_file_size
      improved_download_speed
      voice_recognition
      disabled_ads
      unique_reactions
      unique_stickers
      custom_emoji
      advanced_chat_management
      profile_badge
      emoji_status
      animated_profile_photo
      forum_topic_icon
      app_icons
      real_time_chat_translation
      upgraded_stories
      chat_boost
      accent_color
      background_for_both
      saved_messages_tags
      message_privacy
      last_seen_times
      business
      message_effects
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/premium_feature/#{type}"
    end
  end
end
