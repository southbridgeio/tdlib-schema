module TD::Types
  # Device verification must be performed with the SafetyNet Attestation API.
  #
  # @attr nonce [String] Nonce to pass to the SafetyNet Attestation API.
  class FirebaseDeviceVerificationParameters::SafetyNet < FirebaseDeviceVerificationParameters
    attribute :nonce, TD::Types::Coercible::String
  end
end
