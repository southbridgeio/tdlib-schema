module TD::Types
  # A sticker message.
  #
  # @attr sticker [TD::Types::Sticker] The sticker description.
  class MessageContent::Sticker < MessageContent
    attribute :sticker, TD::Types::Sticker
  end
end
