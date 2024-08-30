module TD::Types
  # Describes a game.
  # Use getInternalLink with internalLinkTypeGame to share the game.
  #
  # @attr id [Integer] Unique game identifier.
  # @attr short_name [TD::Types::String] Game short name.
  # @attr title [TD::Types::String] Game title.
  # @attr text [TD::Types::FormattedText] Game text, usually containing scoreboards for a game.
  # @attr description [TD::Types::String] Game description.
  # @attr photo [TD::Types::Photo] Game photo.
  # @attr animation [TD::Types::Animation, nil] Game animation; may be null.
  class Game < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :short_name, TD::Types::String
    attribute :title, TD::Types::String
    attribute :text, TD::Types::FormattedText
    attribute :description, TD::Types::String
    attribute :photo, TD::Types::Photo
    attribute :animation, TD::Types::Animation.optional.default(nil)
  end
end
