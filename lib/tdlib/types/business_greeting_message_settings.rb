module TD::Types
  # Describes settings for greeting messages that are automatically sent by a Telegram Business account as response to
  #   incoming messages in an inactive private chat.
  #
  # @attr shortcut_id [Integer] Unique quick reply shortcut identifier for the greeting messages.
  # @attr recipients [TD::Types::BusinessRecipients] Chosen recipients of the greeting messages.
  # @attr inactivity_days [Integer] The number of days after which a chat will be considered as inactive; currently,
  #   must be on of 7, 14, 21, or 28.
  class BusinessGreetingMessageSettings < Base
    attribute :shortcut_id, TD::Types::Coercible::Integer
    attribute :recipients, TD::Types::BusinessRecipients
    attribute :inactivity_days, TD::Types::Coercible::Integer
  end
end
