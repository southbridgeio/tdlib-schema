module TD::Types
  # A digit-only authentication code is delivered via Firebase Authentication to the official Android application.
  #
  # @attr device_verification_parameters [TD::Types::FirebaseDeviceVerificationParameters] Parameters to be used for
  #   device verification.
  # @attr length [Integer] Length of the code.
  class AuthenticationCodeType::FirebaseAndroid < AuthenticationCodeType
    attribute :device_verification_parameters, TD::Types::FirebaseDeviceVerificationParameters
    attribute :length, TD::Types::Coercible::Integer
  end
end
