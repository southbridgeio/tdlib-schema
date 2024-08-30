module TD::Types
  # Describes a story feature available to Premium users.
  class PremiumStoryFeature < Base
    %w[
      priority_order
      stealth_mode
      permanent_views_history
      custom_expiration_duration
      save_stories
      links_and_formatting
      video_quality
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/premium_story_feature/#{type}"
    end
  end
end
