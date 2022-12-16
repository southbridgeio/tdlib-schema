module TD::Types
  # A message with a location.
  #
  # @attr location [TD::Types::Location] Location to be sent.
  # @attr live_period [Integer] Period for which the location can be updated, in seconds; must be between 60 and 86400
  #   for a live location and 0 otherwise.
  # @attr heading [Integer] For live locations, a direction in which the location moves, in degrees; 1-360.
  #   Pass 0 if unknown.
  # @attr proximity_alert_radius [Integer] For live locations, a maximum distance to another chat member for proximity
  #   alerts, in meters (0-100000).
  #   Pass 0 if the notification is disabled.
  #   Can't be enabled in channels and Saved Messages.
  class InputMessageContent::Location < InputMessageContent
    attribute :location, TD::Types::Location
    attribute :live_period, TD::Types::Coercible::Integer
    attribute :heading, TD::Types::Coercible::Integer
    attribute :proximity_alert_radius, TD::Types::Coercible::Integer
  end
end
