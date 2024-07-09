module TD::Types
  # Topic containing messages forwarded from a specific chat.
  #
  # @attr chat_id [Integer] Identifier of the chat.
  class SavedMessagesTopicType::SavedFromChat < SavedMessagesTopicType
    attribute :chat_id, TD::Types::Coercible::Integer
  end
end
