module TD::Types
  # A story was changed.
  #
  # @attr story [TD::Types::Story] The new information about the story.
  class Update::Story < Update
    attribute :story, TD::Types::Story
  end
end
