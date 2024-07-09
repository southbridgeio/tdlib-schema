module TD::Types
  # Describes the reason why a code needs to be re-sent.
  class ResendCodeReason < Base
    %w[
      user_request
      verification_failed
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/resend_code_reason/#{type}"
    end
  end
end
