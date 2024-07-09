module TD::Types
  # The message auto-delete timer was changed.
  #
  # @attr old_message_auto_delete_time [Integer] Previous value of message_auto_delete_time.
  # @attr new_message_auto_delete_time [Integer] New value of message_auto_delete_time.
  class ChatEventAction::MessageAutoDeleteTimeChanged < ChatEventAction
    attribute :old_message_auto_delete_time, TD::Types::Coercible::Integer
    attribute :new_message_auto_delete_time, TD::Types::Coercible::Integer
  end
end
