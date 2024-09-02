module TD::Types
  # The show_message_sender setting of a channel was toggled.
  #
  # @attr show_message_sender [Boolean] New value of show_message_sender.
  class ChatEventAction::ShowMessageSenderToggled < ChatEventAction
    attribute :show_message_sender, TD::Types::Bool
  end
end
