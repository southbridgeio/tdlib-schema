module TD::Types
  # A reaction with an emoji.
  #
  # @attr emoji [TD::Types::String] Text representation of the reaction.
  class ReactionType::Emoji < ReactionType
    attribute :emoji, TD::Types::String
  end
end
