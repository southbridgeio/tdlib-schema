module TD::Types
  # Only specific reactions are available in the chat.
  #
  # @attr reactions [Array<TD::Types::ReactionType>] The list of reactions.
  # @attr max_reaction_count [Integer] The maximum allowed number of reactions per message; 1-11.
  class ChatAvailableReactions::Some < ChatAvailableReactions
    attribute :reactions, TD::Types::Array.of(TD::Types::ReactionType)
    attribute :max_reaction_count, TD::Types::Coercible::Integer
  end
end
