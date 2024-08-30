module TD::Types
  # Contains information about the origin of a story that was reposted.
  class StoryOrigin < Base
    %w[
      public_story
      hidden_user
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/story_origin/#{type}"
    end
  end
end
