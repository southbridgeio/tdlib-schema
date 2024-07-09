module TD::Types
  # Describes a message sent in the chat.
  #
  # @attr message_id [Integer] Message identifier.
  class ChatStatisticsObjectType::Message < ChatStatisticsObjectType
    attribute :message_id, TD::Types::Coercible::Integer
  end
end
