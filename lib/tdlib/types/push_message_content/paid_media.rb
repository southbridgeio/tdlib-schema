module TD::Types
  # A message with paid media.
  #
  # @attr star_count [Integer] Number of Telegram Stars needed to buy access to the media in the message; 0 for pinned
  #   message.
  # @attr is_pinned [Boolean] True, if the message is a pinned message with the specified content.
  class PushMessageContent::PaidMedia < PushMessageContent
    attribute :star_count, TD::Types::Coercible::Integer
    attribute :is_pinned, TD::Types::Bool
  end
end
