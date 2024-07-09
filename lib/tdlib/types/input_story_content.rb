module TD::Types
  # The content of a story to send.
  class InputStoryContent < Base
    %w[
      photo
      video
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/input_story_content/#{type}"
    end
  end
end
