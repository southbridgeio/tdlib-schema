module TD::Types
  # Contains information about one session in a Telegram application used by the current user.
  # Sessions must be shown to the user in the returned order.
  #
  # @attr id [Integer] Session identifier.
  # @attr is_current [Boolean] True, if this session is the current session.
  # @attr is_password_pending [Boolean] True, if a password is needed to complete authorization of the session.
  # @attr api_id [Integer] Telegram API identifier, as provided by the application.
  # @attr application_name [TD::Types::String] Name of the application, as provided by the application.
  # @attr application_version [TD::Types::String] The version of the application, as provided by the application.
  # @attr is_official_application [Boolean] True, if the application is an official application or uses the api_id of
  #   an official application.
  # @attr device_model [TD::Types::String] Model of the device the application has been run or is running on, as
  #   provided by the application.
  # @attr platform [TD::Types::String] Operating system the application has been run or is running on, as provided by
  #   the application.
  # @attr system_version [TD::Types::String] Version of the operating system the application has been run or is running
  #   on, as provided by the application.
  # @attr log_in_date [Integer] Point in time (Unix timestamp) when the user has logged in.
  # @attr last_active_date [Integer] Point in time (Unix timestamp) when the session was last used.
  # @attr ip [TD::Types::String] IP address from which the session was created, in human-readable format.
  # @attr country [TD::Types::String] A two-letter country code for the country from which the session was created,
  #   based on the IP address.
  # @attr region [TD::Types::String] Region code from which the session was created, based on the IP address.
  class Session < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :is_current, TD::Types::Bool
    attribute :is_password_pending, TD::Types::Bool
    attribute :api_id, TD::Types::Coercible::Integer
    attribute :application_name, TD::Types::String
    attribute :application_version, TD::Types::String
    attribute :is_official_application, TD::Types::Bool
    attribute :device_model, TD::Types::String
    attribute :platform, TD::Types::String
    attribute :system_version, TD::Types::String
    attribute :log_in_date, TD::Types::Coercible::Integer
    attribute :last_active_date, TD::Types::Coercible::Integer
    attribute :ip, TD::Types::String
    attribute :country, TD::Types::String
    attribute :region, TD::Types::String
  end
end
