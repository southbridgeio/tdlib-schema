module TD::Types
  # The call is ready to use.
  #
  # @attr protocol [TD::Types::CallProtocol] Call protocols supported by the other call participant.
  # @attr servers [Array<TD::Types::CallServer>] List of available call servers.
  # @attr config [TD::Types::String] A JSON-encoded call config.
  # @attr encryption_key [String] Call encryption key.
  # @attr emojis [Array<TD::Types::String>] Encryption key fingerprint represented as 4 emoji.
  # @attr allow_p2p [Boolean] True, if peer-to-peer connection is allowed by users privacy settings.
  # @attr custom_parameters [TD::Types::String] Custom JSON-encoded call parameters to be passed to tgcalls.
  class CallState::Ready < CallState
    attribute :protocol, TD::Types::CallProtocol
    attribute :servers, TD::Types::Array.of(TD::Types::CallServer)
    attribute :config, TD::Types::String
    attribute :encryption_key, TD::Types::Coercible::String
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
    attribute :allow_p2p, TD::Types::Bool
    attribute :custom_parameters, TD::Types::String
  end
end
