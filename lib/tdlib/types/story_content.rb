module TD::Types
  # Contains the content of a story.
  class StoryContent < Base
    %w[
      photo
      video
      unsupported
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/story_content/#{type}"
    end
  end
end
