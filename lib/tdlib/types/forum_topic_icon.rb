module TD::Types
  # Describes a forum topic icon.
  #
  # @attr color [Integer] Color of the topic icon in RGB format.
  # @attr custom_emoji_id [Integer] Unique identifier of the custom emoji shown on the topic icon; 0 if none.
  class ForumTopicIcon < Base
    attribute :color, TD::Types::Coercible::Integer
    attribute :custom_emoji_id, TD::Types::Coercible::Integer
  end
end
