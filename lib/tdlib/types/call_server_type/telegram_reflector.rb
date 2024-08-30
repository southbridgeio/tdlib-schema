module TD::Types
  # A Telegram call reflector.
  #
  # @attr peer_tag [String] A peer tag to be used with the reflector.
  # @attr is_tcp [Boolean] True, if the server uses TCP instead of UDP.
  class CallServerType::TelegramReflector < CallServerType
    attribute :peer_tag, TD::Types::Coercible::String
    attribute :is_tcp, TD::Types::Bool
  end
end
