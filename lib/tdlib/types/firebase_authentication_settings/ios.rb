module TD::Types
  # Settings for Firebase Authentication in the official iOS application.
  #
  # @attr device_token [TD::Types::String] Device token from Apple Push Notification service.
  # @attr is_app_sandbox [Boolean] True, if App Sandbox is enabled.
  class FirebaseAuthenticationSettings::Ios < FirebaseAuthenticationSettings
    attribute :device_token, TD::Types::String
    attribute :is_app_sandbox, TD::Types::Bool
  end
end
