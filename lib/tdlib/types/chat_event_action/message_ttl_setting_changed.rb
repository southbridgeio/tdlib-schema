module TD::Types
  # The message TTL setting was changed.
  #
  # @attr old_message_ttl_setting [Integer] Previous value of message_ttl_setting.
  # @attr new_message_ttl_setting [Integer] New value of message_ttl_setting.
  class ChatEventAction::MessageTtlSettingChanged < ChatEventAction
    attribute :old_message_ttl_setting, TD::Types::Integer
    attribute :new_message_ttl_setting, TD::Types::Integer
  end
end
