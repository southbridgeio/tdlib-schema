module TD::Types
  # A token for Microsoft Push Notification Service VoIP channel.
  #
  # @attr channel_uri [TD::Types::String, nil] Push notification channel URI; may be empty to deregister a device.
  class DeviceToken::MicrosoftPushVoIP < DeviceToken
    attribute :channel_uri, TD::Types::String.optional.default(nil)
  end
end
