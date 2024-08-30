module TD::Types
  # Describes a shortcut that can be used for a quick reply.
  #
  # @attr id [Integer] Unique shortcut identifier.
  # @attr name [TD::Types::String] The name of the shortcut that can be used to use the shortcut.
  # @attr first_message [TD::Types::QuickReplyMessage] The first shortcut message.
  # @attr message_count [Integer] The total number of messages in the shortcut.
  class QuickReplyShortcut < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :name, TD::Types::String
    attribute :first_message, TD::Types::QuickReplyMessage
    attribute :message_count, TD::Types::Coercible::Integer
  end
end
