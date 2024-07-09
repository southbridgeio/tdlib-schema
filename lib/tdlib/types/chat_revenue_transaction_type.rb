module TD::Types
  # Describes type of transaction for revenue earned from sponsored messages in a chat.
  class ChatRevenueTransactionType < Base
    %w[
      earnings
      withdrawal
      refund
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_revenue_transaction_type/#{type}"
    end
  end
end
