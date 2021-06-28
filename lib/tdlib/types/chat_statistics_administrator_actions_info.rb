module TD::Types
  # Contains statistics about administrator actions done by a user.
  #
  # @attr user_id [Integer] Administrator user identifier.
  # @attr deleted_message_count [Integer] Number of messages deleted by the administrator.
  # @attr banned_user_count [Integer] Number of users banned by the administrator.
  # @attr restricted_user_count [Integer] Number of users restricted by the administrator.
  class ChatStatisticsAdministratorActionsInfo < Base
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :deleted_message_count, TD::Types::Coercible::Integer
    attribute :banned_user_count, TD::Types::Coercible::Integer
    attribute :restricted_user_count, TD::Types::Coercible::Integer
  end
end
