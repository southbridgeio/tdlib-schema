module TD::Types
  # Describes an animated or custom representation of an emoji.
  #
  # @attr sticker [TD::Types::Sticker, nil] Sticker for the emoji; may be null if yet unknown for a custom emoji.
  #   If the sticker is a custom emoji, then it can have arbitrary format.
  # @attr sticker_width [Integer] Expected width of the sticker, which can be used if the sticker is null.
  # @attr sticker_height [Integer] Expected height of the sticker, which can be used if the sticker is null.
  # @attr fitzpatrick_type [Integer] Emoji modifier fitzpatrick type; 0-6; 0 if none.
  # @attr sound [TD::Types::File, nil] File containing the sound to be played when the sticker is clicked; may be null.
  #   The sound is encoded with the Opus codec, and stored inside an OGG container.
  class AnimatedEmoji < Base
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
    attribute :sticker_width, TD::Types::Coercible::Integer
    attribute :sticker_height, TD::Types::Coercible::Integer
    attribute :fitzpatrick_type, TD::Types::Coercible::Integer
    attribute :sound, TD::Types::File.optional.default(nil)
  end
end
