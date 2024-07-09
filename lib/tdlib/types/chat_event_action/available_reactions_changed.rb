module TD::Types
  # The chat available reactions were changed.
  #
  # @attr old_available_reactions [TD::Types::ChatAvailableReactions] Previous chat available reactions.
  # @attr new_available_reactions [TD::Types::ChatAvailableReactions] New chat available reactions.
  class ChatEventAction::AvailableReactionsChanged < ChatEventAction
    attribute :old_available_reactions, TD::Types::ChatAvailableReactions
    attribute :new_available_reactions, TD::Types::ChatAvailableReactions
  end
end
