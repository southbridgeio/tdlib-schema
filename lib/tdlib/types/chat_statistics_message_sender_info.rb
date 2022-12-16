module TD::Types
  # Contains statistics about messages sent by a user.
  #
  # @attr user_id [Integer] User identifier.
  # @attr sent_message_count [Integer] Number of sent messages.
  # @attr average_character_count [Integer] Average number of characters in sent messages; 0 if unknown.
  class ChatStatisticsMessageSenderInfo < Base
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :sent_message_count, TD::Types::Coercible::Integer
    attribute :average_character_count, TD::Types::Coercible::Integer
  end
end
