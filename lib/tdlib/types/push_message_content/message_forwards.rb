module TD::Types
  # A forwarded messages.
  #
  # @attr total_count [Integer] Number of forwarded messages.
  class PushMessageContent::MessageForwards < PushMessageContent
    attribute :total_count, TD::Types::Coercible::Integer
  end
end
