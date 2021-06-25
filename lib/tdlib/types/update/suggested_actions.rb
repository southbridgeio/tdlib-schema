module TD::Types
  # The list of suggested to the user actions has changed.
  #
  # @attr added_actions [Array<TD::Types::SuggestedAction>] Added suggested actions.
  # @attr removed_actions [Array<TD::Types::SuggestedAction>] Removed suggested actions.
  class Update::SuggestedActions < Update
    attribute :added_actions, TD::Types::Array.of(TD::Types::SuggestedAction)
    attribute :removed_actions, TD::Types::Array.of(TD::Types::SuggestedAction)
  end
end
