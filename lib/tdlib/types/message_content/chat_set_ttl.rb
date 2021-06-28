module TD::Types
  # The TTL (Time To Live) setting for messages in the chat has been changed.
  #
  # @attr ttl [Integer] New message TTL setting.
  class MessageContent::ChatSetTtl < MessageContent
    attribute :ttl, TD::Types::Coercible::Integer
  end
end
