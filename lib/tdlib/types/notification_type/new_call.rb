module TD::Types
  # New call was received.
  #
  # @attr call_id [Integer] Call identifier.
  class NotificationType::NewCall < NotificationType
    attribute :call_id, TD::Types::Coercible::Integer
  end
end
