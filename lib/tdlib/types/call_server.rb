module TD::Types
  # Describes a server for relaying call data.
  #
  # @attr id [Integer] Server identifier.
  # @attr ip_address [TD::Types::String] Server IPv4 address.
  # @attr ipv6_address [TD::Types::String] Server IPv6 address.
  # @attr port [Integer] Server port number.
  # @attr type [TD::Types::CallServerType] Server type.
  class CallServer < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :ip_address, TD::Types::String
    attribute :ipv6_address, TD::Types::String
    attribute :port, TD::Types::Coercible::Integer
    attribute :type, TD::Types::CallServerType
  end
end
