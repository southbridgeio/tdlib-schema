module TD::Types
  # Contains a public repost to a story.
  #
  # @attr story [TD::Types::Story] Information about the story.
  class PublicForward::Story < PublicForward
    attribute :story, TD::Types::Story
  end
end
