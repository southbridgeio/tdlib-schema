module TD::Types
  # A message in a business account was edited; for bots only.
  #
  # @attr connection_id [TD::Types::String] Unique identifier of the business connection.
  # @attr message [TD::Types::BusinessMessage] The edited message.
  class Update::BusinessMessageEdited < Update
    attribute :connection_id, TD::Types::String
    attribute :message, TD::Types::BusinessMessage
  end
end
