module TD::Types
  # A token for Firebase Cloud Messaging.
  #
  # @attr token [TD::Types::String, nil] Device registration token; may be empty to de-register a device.
  # @attr encrypt [Boolean] True, if push notifications should be additionally encrypted.
  class DeviceToken::FirebaseCloudMessaging < DeviceToken
    attribute :token, TD::Types::String.optional.default(nil)
    attribute :encrypt, TD::Types::Bool
  end
end
