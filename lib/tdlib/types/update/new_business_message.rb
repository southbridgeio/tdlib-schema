module TD::Types
  # A new message was added to a business account; for bots only.
  #
  # @attr connection_id [TD::Types::String] Unique identifier of the business connection.
  # @attr message [TD::Types::BusinessMessage] The new message.
  class Update::NewBusinessMessage < Update
    attribute :connection_id, TD::Types::String
    attribute :message, TD::Types::BusinessMessage
  end
end
