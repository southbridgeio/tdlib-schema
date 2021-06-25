module TD::Types
  # A Telegram call reflector.
  #
  # @attr peer_tag [String] A peer tag to be used with the reflector.
  class CallServerType::TelegramReflector < CallServerType
    attribute :peer_tag, TD::Types::String
  end
end
