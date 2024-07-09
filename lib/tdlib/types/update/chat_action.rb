module TD::Types
  # A message sender activity in the chat has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_thread_id [Integer] If not 0, the message thread identifier in which the action was performed.
  # @attr sender_id [TD::Types::MessageSender] Identifier of a message sender performing the action.
  # @attr action [TD::Types::ChatAction] The action.
  class Update::ChatAction < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_thread_id, TD::Types::Coercible::Integer
    attribute :sender_id, TD::Types::MessageSender
    attribute :action, TD::Types::ChatAction
  end
end
