module TD::Types
  # Contains statistics about interactions with a message.
  #
  # @attr message_id [Integer] Message identifier.
  # @attr view_count [Integer] Number of times the message was viewed.
  # @attr forward_count [Integer] Number of times the message was forwarded.
  class ChatStatisticsMessageInteractionInfo < Base
    attribute :message_id, TD::Types::Integer
    attribute :view_count, TD::Types::Integer
    attribute :forward_count, TD::Types::Integer
  end
end
