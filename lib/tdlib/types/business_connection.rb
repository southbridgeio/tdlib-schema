module TD::Types
  # Describes a connection of the bot with a business account.
  #
  # @attr id [TD::Types::String] Unique identifier of the connection.
  # @attr user_id [Integer] Identifier of the business user that created the connection.
  # @attr user_chat_id [Integer] Chat identifier of the private chat with the user.
  # @attr date [Integer] Point in time (Unix timestamp) when the connection was established.
  # @attr can_reply [Boolean] True, if the bot can send messages to the connected user; false otherwise.
  # @attr is_enabled [Boolean] True, if the connection is enabled; false otherwise.
  class BusinessConnection < Base
    attribute :id, TD::Types::String
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :user_chat_id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :can_reply, TD::Types::Bool
    attribute :is_enabled, TD::Types::Bool
  end
end
