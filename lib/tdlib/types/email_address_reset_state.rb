module TD::Types
  # Describes reset state of an email address.
  class EmailAddressResetState < Base
    %w[
      available
      pending
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/email_address_reset_state/#{type}"
    end
  end
end
