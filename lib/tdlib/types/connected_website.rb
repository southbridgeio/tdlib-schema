module TD::Types
  # Contains information about one website the current user is logged in with Telegram.
  #
  # @attr id [Integer] Website identifier.
  # @attr domain_name [TD::Types::String] The domain name of the website.
  # @attr bot_user_id [Integer] User identifier of a bot linked with the website.
  # @attr browser [TD::Types::String] The version of a browser used to log in.
  # @attr platform [TD::Types::String] Operating system the browser is running on.
  # @attr log_in_date [Integer] Point in time (Unix timestamp) when the user was logged in.
  # @attr last_active_date [Integer] Point in time (Unix timestamp) when obtained authorization was last used.
  # @attr ip_address [TD::Types::String] IP address from which the user was logged in, in human-readable format.
  # @attr location [TD::Types::String] Human-readable description of a country and a region from which the user was
  #   logged in, based on the IP address.
  class ConnectedWebsite < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :domain_name, TD::Types::String
    attribute :bot_user_id, TD::Types::Coercible::Integer
    attribute :browser, TD::Types::String
    attribute :platform, TD::Types::String
    attribute :log_in_date, TD::Types::Coercible::Integer
    attribute :last_active_date, TD::Types::Coercible::Integer
    attribute :ip_address, TD::Types::String
    attribute :location, TD::Types::String
  end
end
