module TD::Types
  # Describes purpose of a transaction with a bot.
  class BotTransactionPurpose < Base
    %w[
      paid_media
      invoice_payment
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/bot_transaction_purpose/#{type}"
    end
  end
end
