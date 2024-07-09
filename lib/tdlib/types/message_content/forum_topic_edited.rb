module TD::Types
  # A forum topic has been edited.
  #
  # @attr name [TD::Types::String] If non-empty, the new name of the topic.
  # @attr edit_icon_custom_emoji_id [Boolean] True, if icon's custom_emoji_id is changed.
  # @attr icon_custom_emoji_id [Integer] New unique identifier of the custom emoji shown on the topic icon; 0 if none.
  #   Must be ignored if edit_icon_custom_emoji_id is false.
  class MessageContent::ForumTopicEdited < MessageContent
    attribute :name, TD::Types::String
    attribute :edit_icon_custom_emoji_id, TD::Types::Bool
    attribute :icon_custom_emoji_id, TD::Types::Coercible::Integer
  end
end
