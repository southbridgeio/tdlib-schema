module TD::Types
  # Describes parameters to be used for device verification.
  class FirebaseDeviceVerificationParameters < Base
    %w[
      safety_net
      play_integrity
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/firebase_device_verification_parameters/#{type}"
    end
  end
end
