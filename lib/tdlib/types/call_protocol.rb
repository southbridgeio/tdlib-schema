module TD::Types
  # Specifies the supported call protocols.
  #
  # @attr udp_p2p [Boolean] True, if UDP peer-to-peer connections are supported.
  # @attr udp_reflector [Boolean] True, if connection through UDP reflectors is supported.
  # @attr min_layer [Integer] The minimum supported API layer; use 65.
  # @attr max_layer [Integer] The maximum supported API layer; use 92.
  # @attr library_versions [Array<TD::Types::String>] List of supported tgcalls versions.
  class CallProtocol < Base
    attribute :udp_p2p, TD::Types::Bool
    attribute :udp_reflector, TD::Types::Bool
    attribute :min_layer, TD::Types::Coercible::Integer
    attribute :max_layer, TD::Types::Coercible::Integer
    attribute :library_versions, TD::Types::Array.of(TD::Types::String)
  end
end
