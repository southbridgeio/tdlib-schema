module TD::Types
  # The message Time To Live setting for a chat was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_ttl_setting [Integer] New value of message_ttl_setting.
  class Update::ChatMessageTtlSetting < Update
    attribute :chat_id, TD::Types::Integer
    attribute :message_ttl_setting, TD::Types::Integer
  end
end
