module TD::Types
  # Describes a purpose of an in-store payment.
  class StorePaymentPurpose < Base
    %w[
      premium_subscription
      gifted_premium
      premium_gift_codes
      premium_giveaway
      stars
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/store_payment_purpose/#{type}"
    end
  end
end
