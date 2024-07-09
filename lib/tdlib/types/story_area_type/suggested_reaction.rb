module TD::Types
  # An area pointing to a suggested reaction.
  # App needs to show a clickable reaction on the area and call setStoryReaction when the are is clicked.
  #
  # @attr reaction_type [TD::Types::ReactionType] Type of the reaction.
  # @attr total_count [Integer] Number of times the reaction was added.
  # @attr is_dark [Boolean] True, if reaction has a dark background.
  # @attr is_flipped [Boolean] True, if reaction corner is flipped.
  class StoryAreaType::SuggestedReaction < StoryAreaType
    attribute :reaction_type, TD::Types::ReactionType
    attribute :total_count, TD::Types::Coercible::Integer
    attribute :is_dark, TD::Types::Bool
    attribute :is_flipped, TD::Types::Bool
  end
end
