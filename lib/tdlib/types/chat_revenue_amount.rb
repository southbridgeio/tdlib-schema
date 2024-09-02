module TD::Types
  # Contains information about revenue earned from sponsored messages in a chat.
  #
  # @attr cryptocurrency [TD::Types::String] Cryptocurrency in which revenue is calculated.
  # @attr total_amount [Integer] Total amount of the cryptocurrency earned, in the smallest units of the
  #   cryptocurrency.
  # @attr balance_amount [Integer] Amount of the cryptocurrency that isn't withdrawn yet, in the smallest units of the
  #   cryptocurrency.
  # @attr available_amount [Integer] Amount of the cryptocurrency available for withdrawal, in the smallest units of
  #   the cryptocurrency.
  class ChatRevenueAmount < Base
    attribute :cryptocurrency, TD::Types::String
    attribute :total_amount, TD::Types::Coercible::Integer
    attribute :balance_amount, TD::Types::Coercible::Integer
    attribute :available_amount, TD::Types::Coercible::Integer
  end
end
