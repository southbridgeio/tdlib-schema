module TD::Types
  # An effect from a premium sticker.
  #
  # @attr sticker [TD::Types::Sticker] The premium sticker.
  #   The effect can be found at sticker.full_type.premium_animation.
  class MessageEffectType::PremiumSticker < MessageEffectType
    attribute :sticker, TD::Types::Sticker
  end
end
