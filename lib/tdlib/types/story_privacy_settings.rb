module TD::Types
  # Describes privacy settings of a story.
  class StoryPrivacySettings < Base
    %w[
      everyone
      contacts
      close_friends
      selected_users
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/story_privacy_settings/#{type}"
    end
  end
end
