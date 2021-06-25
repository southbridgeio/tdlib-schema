module TD::Types
  # User activity in the chat has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_thread_id [Integer] If not 0, a message thread identifier in which the action was performed.
  # @attr user_id [Integer] Identifier of a user performing an action.
  # @attr action [TD::Types::ChatAction] The action description.
  class Update::UserChatAction < Update
    attribute :chat_id, TD::Types::Integer
    attribute :message_thread_id, TD::Types::Integer
    attribute :user_id, TD::Types::Integer
    attribute :action, TD::Types::ChatAction
  end
end
