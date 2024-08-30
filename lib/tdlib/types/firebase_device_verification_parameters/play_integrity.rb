module TD::Types
  # Device verification must be performed with the classic Play Integrity verification
  #   (https://developer.android.com/google/play/integrity/classic).
  #
  # @attr nonce [TD::Types::String] Base64url-encoded nonce to pass to the Play Integrity API.
  # @attr cloud_project_number [Integer] Cloud project number to pass to the Play Integrity API.
  class FirebaseDeviceVerificationParameters::PlayIntegrity < FirebaseDeviceVerificationParameters
    attribute :nonce, TD::Types::String
    attribute :cloud_project_number, TD::Types::Coercible::Integer
  end
end
