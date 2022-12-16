module TD::Types
  # Describes theme settings.
  #
  # @attr accent_color [Integer] Theme accent color in ARGB format.
  # @attr background [TD::Types::Background, nil] The background to be used in chats; may be null.
  # @attr outgoing_message_fill [TD::Types::BackgroundFill] The fill to be used as a background for outgoing messages.
  # @attr animate_outgoing_message_fill [Boolean] If true, the freeform gradient fill needs to be animated on every
  #   sent message.
  # @attr outgoing_message_accent_color [Integer] Accent color of outgoing messages in ARGB format.
  class ThemeSettings < Base
    attribute :accent_color, TD::Types::Coercible::Integer
    attribute :background, TD::Types::Background.optional.default(nil)
    attribute :outgoing_message_fill, TD::Types::BackgroundFill
    attribute :animate_outgoing_message_fill, TD::Types::Bool
    attribute :outgoing_message_accent_color, TD::Types::Coercible::Integer
  end
end
