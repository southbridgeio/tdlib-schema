module TD::Types
  # The type of default reaction has changed.
  #
  # @attr reaction_type [TD::Types::ReactionType] The new type of the default reaction.
  class Update::DefaultReactionType < Update
    attribute :reaction_type, TD::Types::ReactionType
  end
end
