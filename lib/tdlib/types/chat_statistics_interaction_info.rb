module TD::Types
  # Contains statistics about interactions with a message sent in the chat or a story sent by the chat.
  #
  # @attr object_type [TD::Types::ChatStatisticsObjectType] Type of the object.
  # @attr view_count [Integer] Number of times the object was viewed.
  # @attr forward_count [Integer] Number of times the object was forwarded.
  # @attr reaction_count [Integer] Number of times reactions were added to the object.
  class ChatStatisticsInteractionInfo < Base
    attribute :object_type, TD::Types::ChatStatisticsObjectType
    attribute :view_count, TD::Types::Coercible::Integer
    attribute :forward_count, TD::Types::Coercible::Integer
    attribute :reaction_count, TD::Types::Coercible::Integer
  end
end
