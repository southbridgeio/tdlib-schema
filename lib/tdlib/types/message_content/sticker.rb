module TD::Types
  # A sticker message.
  #
  # @attr sticker [TD::Types::Sticker] The sticker description.
  # @attr is_premium [Boolean] True, if premium animation of the sticker must be played.
  class MessageContent::Sticker < MessageContent
    attribute :sticker, TD::Types::Sticker
    attribute :is_premium, TD::Types::Bool
  end
end
