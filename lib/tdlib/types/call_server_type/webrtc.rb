module TD::Types
  # A WebRTC server.
  #
  # @attr username [TD::Types::String] Username to be used for authentication.
  # @attr password [TD::Types::String] Authentication password.
  # @attr supports_turn [Boolean] True, if the server supports TURN.
  # @attr supports_stun [Boolean] True, if the server supports STUN.
  class CallServerType::Webrtc < CallServerType
    attribute :username, TD::Types::String
    attribute :password, TD::Types::String
    attribute :supports_turn, TD::Types::Bool
    attribute :supports_stun, TD::Types::Bool
  end
end
