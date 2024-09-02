module TD::Types
  # The list of active stories posted by a specific chat has changed.
  #
  # @attr active_stories [TD::Types::ChatActiveStories] The new list of active stories.
  class Update::ChatActiveStories < Update
    attribute :active_stories, TD::Types::ChatActiveStories
  end
end
