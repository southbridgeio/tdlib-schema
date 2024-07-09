module TD::Types
  # A request can't be completed unless application verification is performed; for official mobile applications only.
  # The method setApplicationVerificationToken must be called once the verification is completed or failed.
  #
  # @attr verification_id [Integer] Unique identifier for the verification process.
  # @attr nonce [TD::Types::String] Unique base64url-encoded nonce for the classic Play Integrity verification
  #   (https://developer.android.com/google/play/integrity/classic) for Android, or a unique string to compare with
  #   verify_nonce field from a push notification for iOS.
  # @attr cloud_project_number [Integer] Cloud project number to pass to the Play Integrity API on Android.
  class Update::ApplicationVerificationRequired < Update
    attribute :verification_id, TD::Types::Coercible::Integer
    attribute :nonce, TD::Types::String
    attribute :cloud_project_number, TD::Types::Coercible::Integer
  end
end
