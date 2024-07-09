module TD::Types
  # Describes a story sent by the chat.
  #
  # @attr story_id [Integer] Story identifier.
  class ChatStatisticsObjectType::Story < ChatStatisticsObjectType
    attribute :story_id, TD::Types::Coercible::Integer
  end
end
