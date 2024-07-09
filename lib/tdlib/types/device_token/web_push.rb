module TD::Types
  # A token for web Push API.
  #
  # @attr endpoint [TD::Types::String, nil] Absolute URL exposed by the push service where the application server can
  #   send push messages; may be empty to deregister a device.
  # @attr p256dh_base64url [TD::Types::String] Base64url-encoded P-256 elliptic curve Diffie-Hellman public key.
  # @attr auth_base64url [TD::Types::String] Base64url-encoded authentication secret.
  class DeviceToken::WebPush < DeviceToken
    attribute :endpoint, TD::Types::String.optional.default(nil)
    attribute :p256dh_base64url, TD::Types::String
    attribute :auth_base64url, TD::Types::String
  end
end
