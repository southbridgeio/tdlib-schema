module TD::Types
  # Describes direction of a transaction with Telegram Stars.
  class StarTransactionDirection < Base
    %w[
      incoming
      outgoing
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/star_transaction_direction/#{type}"
    end
  end
end
