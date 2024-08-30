module TD::Types
  # An effect from an emoji reaction.
  #
  # @attr select_animation [TD::Types::Sticker] Select animation for the effect in TGS format.
  # @attr effect_animation [TD::Types::Sticker] Effect animation for the effect in TGS format.
  class MessageEffectType::EmojiReaction < MessageEffectType
    attribute :select_animation, TD::Types::Sticker
    attribute :effect_animation, TD::Types::Sticker
  end
end
