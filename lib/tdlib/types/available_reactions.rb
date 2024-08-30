module TD::Types
  # Represents a list of reactions that can be added to a message.
  #
  # @attr top_reactions [Array<TD::Types::AvailableReaction>] List of reactions to be shown at the top.
  # @attr recent_reactions [Array<TD::Types::AvailableReaction>] List of recently used reactions.
  # @attr popular_reactions [Array<TD::Types::AvailableReaction>] List of popular reactions.
  # @attr allow_custom_emoji [Boolean] True, if any custom emoji reaction can be added by Telegram Premium subscribers.
  # @attr are_tags [Boolean] True, if the reactions will be tags and the message can be found by them.
  # @attr unavailability_reason [TD::Types::ReactionUnavailabilityReason, nil] The reason why the current user can't
  #   add reactions to the message, despite some other users can; may be null if none.
  class AvailableReactions < Base
    attribute :top_reactions, TD::Types::Array.of(TD::Types::AvailableReaction)
    attribute :recent_reactions, TD::Types::Array.of(TD::Types::AvailableReaction)
    attribute :popular_reactions, TD::Types::Array.of(TD::Types::AvailableReaction)
    attribute :allow_custom_emoji, TD::Types::Bool
    attribute :are_tags, TD::Types::Bool
    attribute :unavailability_reason, TD::Types::ReactionUnavailabilityReason.optional.default(nil)
  end
end
