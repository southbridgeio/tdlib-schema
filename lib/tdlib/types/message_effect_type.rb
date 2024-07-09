module TD::Types
  # Describes type of emoji effect.
  class MessageEffectType < Base
    %w[
      emoji_reaction
      premium_sticker
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_effect_type/#{type}"
    end
  end
end
