module TD::Types
  # Contains authentication data for an email address.
  class EmailAddressAuthentication < Base
    %w[
      code
      apple_id
      google_id
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/email_address_authentication/#{type}"
    end
  end
end
