module TD::Types
  # Contains information about a payment provider.
  class PaymentProvider < Base
    %w[
      smart_glocal
      stripe
      other
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/payment_provider/#{type}"
    end
  end
end
