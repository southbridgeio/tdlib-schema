module TD::Types
  # A chat voice chat state has changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr voice_chat [TD::Types::VoiceChat] New value of voice_chat.
  class Update::ChatVoiceChat < Update
    attribute :chat_id, TD::Types::Integer
    attribute :voice_chat, TD::Types::VoiceChat
  end
end
