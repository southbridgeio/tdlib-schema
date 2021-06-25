module TD::Types
  # A message with a location.
  #
  # @attr location [TD::Types::Location] The location description.
  # @attr live_period [Integer] Time relative to the message send date, for which the location can be updated, in
  #   seconds.
  # @attr expires_in [Integer] Left time for which the location can be updated, in seconds.
  #   {TD::Types::Update::MessageContent} is not sent when this field changes.
  # @attr heading [Integer] For live locations, a direction in which the location moves, in degrees; 1-360.
  #   If 0 the direction is unknown.
  # @attr proximity_alert_radius [Integer] For live locations, a maximum distance to another chat member for proximity
  #   alerts, in meters (0-100000).
  #   0 if the notification is disabled.
  #   Available only for the message sender.
  class MessageContent::Location < MessageContent
    attribute :location, TD::Types::Location
    attribute :live_period, TD::Types::Integer
    attribute :expires_in, TD::Types::Integer
    attribute :heading, TD::Types::Integer
    attribute :proximity_alert_radius, TD::Types::Integer
  end
end
