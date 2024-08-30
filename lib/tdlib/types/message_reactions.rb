module TD::Types
  # Contains a list of reactions added to a message.
  #
  # @attr reactions [Array<TD::Types::MessageReaction>] List of added reactions.
  # @attr are_tags [Boolean] True, if the reactions are tags and Telegram Premium users can filter messages by them.
  # @attr paid_reactors [Array<TD::Types::PaidReactor>] Information about top users that added the paid reaction.
  # @attr can_get_added_reactions [Boolean] True, if the list of added reactions is available using
  #   getMessageAddedReactions.
  class MessageReactions < Base
    attribute :reactions, TD::Types::Array.of(TD::Types::MessageReaction)
    attribute :are_tags, TD::Types::Bool
    attribute :paid_reactors, TD::Types::Array.of(TD::Types::PaidReactor)
    attribute :can_get_added_reactions, TD::Types::Bool
  end
end
