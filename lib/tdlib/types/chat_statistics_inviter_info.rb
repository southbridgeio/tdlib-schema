module TD::Types
  # Contains statistics about number of new members invited by a user.
  #
  # @attr user_id [Integer] User identifier.
  # @attr added_member_count [Integer] Number of new members invited by the user.
  class ChatStatisticsInviterInfo < Base
    attribute :user_id, TD::Types::Integer
    attribute :added_member_count, TD::Types::Integer
  end
end
