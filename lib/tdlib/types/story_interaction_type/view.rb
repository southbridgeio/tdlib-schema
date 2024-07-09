module TD::Types
  # A view of the story.
  #
  # @attr chosen_reaction_type [TD::Types::ReactionType, nil] Type of the reaction that was chosen by the viewer; may
  #   be null if none.
  class StoryInteractionType::View < StoryInteractionType
    attribute :chosen_reaction_type, TD::Types::ReactionType.optional.default(nil)
  end
end
