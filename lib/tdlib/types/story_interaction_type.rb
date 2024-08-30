module TD::Types
  # Describes type of interaction with a story.
  class StoryInteractionType < Base
    %w[
      view
      forward
      repost
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/story_interaction_type/#{type}"
    end
  end
end
