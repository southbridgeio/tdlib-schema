module TD::Types
  # Describes type of clickable area on a story media.
  class StoryAreaType < Base
    %w[
      location
      venue
      suggested_reaction
      message
      link
      weather
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/story_area_type/#{type}"
    end
  end
end
