module TD::Types
  # Describes purpose of a transaction with a channel.
  class ChannelTransactionPurpose < Base
    %w[
      paid_media
      join
      reaction
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/channel_transaction_purpose/#{type}"
    end
  end
end
