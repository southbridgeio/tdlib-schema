module TD::Types
  # Contains information about a proxy server.
  #
  # @attr id [Integer] Unique identifier of the proxy.
  # @attr server [TD::Types::String] Proxy server domain or IP address.
  # @attr port [Integer] Proxy server port.
  # @attr last_used_date [Integer] Point in time (Unix timestamp) when the proxy was last used; 0 if never.
  # @attr is_enabled [Boolean] True, if the proxy is enabled now.
  # @attr type [TD::Types::ProxyType] Type of the proxy.
  class Proxy < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :server, TD::Types::String
    attribute :port, TD::Types::Coercible::Integer
    attribute :last_used_date, TD::Types::Coercible::Integer
    attribute :is_enabled, TD::Types::Bool
    attribute :type, TD::Types::ProxyType
  end
end
