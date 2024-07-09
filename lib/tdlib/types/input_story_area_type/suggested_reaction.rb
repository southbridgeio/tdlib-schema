module TD::Types
  # An area pointing to a suggested reaction.
  #
  # @attr reaction_type [TD::Types::ReactionType] Type of the reaction.
  # @attr is_dark [Boolean] True, if reaction has a dark background.
  # @attr is_flipped [Boolean] True, if reaction corner is flipped.
  class InputStoryAreaType::SuggestedReaction < InputStoryAreaType
    attribute :reaction_type, TD::Types::ReactionType
    attribute :is_dark, TD::Types::Bool
    attribute :is_flipped, TD::Types::Bool
  end
end
