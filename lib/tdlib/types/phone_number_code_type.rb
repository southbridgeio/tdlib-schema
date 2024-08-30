module TD::Types
  # Describes type of the request for which a code is sent to a phone number.
  class PhoneNumberCodeType < Base
    %w[
      change
      verify
      confirm_ownership
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/phone_number_code_type/#{type}"
    end
  end
end
