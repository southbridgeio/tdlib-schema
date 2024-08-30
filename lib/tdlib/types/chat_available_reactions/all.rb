module TD::Types
  # All reactions are available in the chat, excluding the paid reaction and custom reactions in channel chats.
  #
  # @attr max_reaction_count [Integer] The maximum allowed number of reactions per message; 1-11.
  class ChatAvailableReactions::All < ChatAvailableReactions
    attribute :max_reaction_count, TD::Types::Coercible::Integer
  end
end
