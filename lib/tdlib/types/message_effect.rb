module TD::Types
  # Contains information about an effect added to a message.
  #
  # @attr id [Integer] Unique identifier of the effect.
  # @attr static_icon [TD::Types::Sticker, nil] Static icon for the effect in WEBP format; may be null if none.
  # @attr emoji [TD::Types::String] Emoji corresponding to the effect that can be used if static icon isn't available.
  # @attr is_premium [Boolean] True, if Telegram Premium subscription is required to use the effect.
  # @attr type [TD::Types::MessageEffectType] Type of the effect.
  class MessageEffect < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :static_icon, TD::Types::Sticker.optional.default(nil)
    attribute :emoji, TD::Types::String
    attribute :is_premium, TD::Types::Bool
    attribute :type, TD::Types::MessageEffectType
  end
end
