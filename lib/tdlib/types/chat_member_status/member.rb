module TD::Types
  # The user is a member of the chat, without any additional privileges or restrictions.
  #
  # @attr member_until_date [Integer] Point in time (Unix timestamp) when the user will be removed from the chat
  #   because of the expired subscription; 0 if never.
  #   Ignored in setChatMemberStatus.
  class ChatMemberStatus::Member < ChatMemberStatus
    attribute :member_until_date, TD::Types::Coercible::Integer
  end
end
