module TD::Types
  # Provides information about the method by which an authentication code is delivered to the user.
  class AuthenticationCodeType < Base
    %w[
      telegram_message
      sms
      sms_word
      sms_phrase
      call
      flash_call
      missed_call
      fragment
      firebase_android
      firebase_ios
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/authentication_code_type/#{type}"
    end
  end
end
