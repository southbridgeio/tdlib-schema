module TD::Types
  # A fact-check added to a message was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr message_id [Integer] Message identifier.
  # @attr fact_check [TD::Types::FactCheck] The new fact-check.
  class Update::MessageFactCheck < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :fact_check, TD::Types::FactCheck
  end
end
