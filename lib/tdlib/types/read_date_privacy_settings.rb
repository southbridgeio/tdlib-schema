module TD::Types
  # Contains privacy settings for message read date in private chats.
  # Read dates are always shown to the users that can see online status of the current user regardless of this setting.
  #
  # @attr show_read_date [Boolean] True, if message read date is shown to other users in private chats.
  #   If false and the current user isn't a Telegram Premium user, then they will not be able to see other's message
  #   read date.
  class ReadDatePrivacySettings < Base
    attribute :show_read_date, TD::Types::Bool
  end
end
