module TD::Types
  # The message was originally sent by a user, which is hidden by their privacy settings.
  #
  # @attr sender_name [TD::Types::String] Name of the sender.
  class MessageOrigin::HiddenUser < MessageOrigin
    attribute :sender_name, TD::Types::String
  end
end
