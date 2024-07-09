module TD::Types
  # A photo story.
  #
  # @attr photo [TD::Types::Photo] The photo.
  class StoryContent::Photo < StoryContent
    attribute :photo, TD::Types::Photo
  end
end
