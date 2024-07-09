module TD::Types
  # A new incoming callback query from a business message; for bots only.
  #
  # @attr id [Integer] Unique query identifier.
  # @attr sender_user_id [Integer] Identifier of the user who sent the query.
  # @attr connection_id [TD::Types::String] Unique identifier of the business connection.
  # @attr message [TD::Types::BusinessMessage] The message from the business account from which the query originated.
  # @attr chat_instance [Integer] An identifier uniquely corresponding to the chat a message was sent to.
  # @attr payload [TD::Types::CallbackQueryPayload] Query payload.
  class Update::NewBusinessCallbackQuery < Update
    attribute :id, TD::Types::Coercible::Integer
    attribute :sender_user_id, TD::Types::Coercible::Integer
    attribute :connection_id, TD::Types::String
    attribute :message, TD::Types::BusinessMessage
    attribute :chat_instance, TD::Types::Coercible::Integer
    attribute :payload, TD::Types::CallbackQueryPayload
  end
end
