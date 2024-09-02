module TD::Types
  # A user in the chat came within proximity alert range.
  #
  # @attr traveler_id [TD::Types::MessageSender] The identifier of a user or chat that triggered the proximity alert.
  # @attr watcher_id [TD::Types::MessageSender] The identifier of a user or chat that subscribed for the proximity
  #   alert.
  # @attr distance [Integer] The distance between the users.
  class MessageContent::ProximityAlertTriggered < MessageContent
    attribute :traveler_id, TD::Types::MessageSender
    attribute :watcher_id, TD::Types::MessageSender
    attribute :distance, TD::Types::Coercible::Integer
  end
end
