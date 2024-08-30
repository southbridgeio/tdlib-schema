module TD::Types
  # Contains settings for Firebase Authentication in the official applications.
  class FirebaseAuthenticationSettings < Base
    %w[
      android
      ios
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/firebase_authentication_settings/#{type}"
    end
  end
end
