module TD::Types
  # Represents a tag used in Saved Messages or a Saved Messages topic.
  #
  # @attr tag [TD::Types::ReactionType] The tag.
  # @attr label [TD::Types::String] Label of the tag; 0-12 characters.
  #   Always empty if the tag is returned for a Saved Messages topic.
  # @attr count [Integer] Number of times the tag was used; may be 0 if the tag has non-empty label.
  class SavedMessagesTag < Base
    attribute :tag, TD::Types::ReactionType
    attribute :label, TD::Types::String
    attribute :count, TD::Types::Coercible::Integer
  end
end
