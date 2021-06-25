module TD::Types
  # A user in the chat came within proximity alert range.
  #
  # @attr traveler [TD::Types::MessageSender] The user or chat, which triggered the proximity alert.
  # @attr watcher [TD::Types::MessageSender] The user or chat, which subscribed for the proximity alert.
  # @attr distance [Integer] The distance between the users.
  class MessageContent::ProximityAlertTriggered < MessageContent
    attribute :traveler, TD::Types::MessageSender
    attribute :watcher, TD::Types::MessageSender
    attribute :distance, TD::Types::Integer
  end
end
