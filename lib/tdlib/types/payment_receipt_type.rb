module TD::Types
  # Describes type of successful payment.
  class PaymentReceiptType < Base
    %w[
      regular
      stars
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/payment_receipt_type/#{type}"
    end
  end
end
