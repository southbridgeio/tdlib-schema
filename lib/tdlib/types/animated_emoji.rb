module TD::Types
  # Describes an animated representation of an emoji.
  #
  # @attr sticker [TD::Types::Sticker] Animated sticker for the emoji.
  # @attr color_replacements [Array<TD::Types::ColorReplacement>] List of colors to be replaced while the sticker is
  #   rendered.
  # @attr sound [TD::Types::File, nil] File containing the sound to be played when the animated emoji is clicked if
  #   any; may be null.
  #   The sound is encoded with the Opus codec, and stored inside an OGG container.
  class AnimatedEmoji < Base
    attribute :sticker, TD::Types::Sticker
    attribute :color_replacements, TD::Types::Array.of(TD::Types::ColorReplacement)
    attribute :sound, TD::Types::File.optional.default(nil)
  end
end
