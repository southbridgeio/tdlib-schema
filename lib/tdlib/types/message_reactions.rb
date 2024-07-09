module TD::Types
  # Contains a list of reactions added to a message.
  #
  # @attr reactions [Array<TD::Types::MessageReaction>] List of added reactions.
  # @attr are_tags [Boolean] True, if the reactions are tags and Telegram Premium users can filter messages by them.
  class MessageReactions < Base
    attribute :reactions, TD::Types::Array.of(TD::Types::MessageReaction)
    attribute :are_tags, TD::Types::Bool
  end
end
