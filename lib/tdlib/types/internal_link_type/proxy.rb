module TD::Types
  # The link is a link to a proxy.
  # Call addProxy with the given parameters to process the link and add the proxy.
  #
  # @attr server [TD::Types::String] Proxy server IP address.
  # @attr port [Integer] Proxy server port.
  # @attr type [TD::Types::ProxyType] Type of the proxy.
  class InternalLinkType::Proxy < InternalLinkType
    attribute :server, TD::Types::String
    attribute :port, TD::Types::Coercible::Integer
    attribute :type, TD::Types::ProxyType
  end
end
