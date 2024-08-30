module TD::Types
  # Contains information about an unconfirmed session.
  #
  # @attr id [Integer] Session identifier.
  # @attr log_in_date [Integer] Point in time (Unix timestamp) when the user has logged in.
  # @attr device_model [TD::Types::String] Model of the device that was used for the session creation, as provided by
  #   the application.
  # @attr location [TD::Types::String] A human-readable description of the location from which the session was created,
  #   based on the IP address.
  class UnconfirmedSession < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :log_in_date, TD::Types::Coercible::Integer
    attribute :device_model, TD::Types::String
    attribute :location, TD::Types::String
  end
end
