module TD::Types
  # Describes settings for messages that are automatically sent by a Telegram Business account when it is away.
  #
  # @attr shortcut_id [Integer] Unique quick reply shortcut identifier for the away messages.
  # @attr recipients [TD::Types::BusinessRecipients] Chosen recipients of the away messages.
  # @attr schedule [TD::Types::BusinessAwayMessageSchedule] Settings used to check whether the current user is away.
  # @attr offline_only [Boolean] True, if the messages must not be sent if the account was online in the last 10
  #   minutes.
  class BusinessAwayMessageSettings < Base
    attribute :shortcut_id, TD::Types::Coercible::Integer
    attribute :recipients, TD::Types::BusinessRecipients
    attribute :schedule, TD::Types::BusinessAwayMessageSchedule
    attribute :offline_only, TD::Types::Bool
  end
end
