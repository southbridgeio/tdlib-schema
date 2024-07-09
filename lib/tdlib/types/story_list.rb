module TD::Types
  # Describes a list of stories.
  class StoryList < Base
    %w[
      main
      archive
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/story_list/#{type}"
    end
  end
end
