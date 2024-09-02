module TD::Types
  # Describes a clickable rectangle area on a story media to be added.
  #
  # @attr position [TD::Types::StoryAreaPosition] Position of the area.
  # @attr type [TD::Types::InputStoryAreaType] Type of the area.
  class InputStoryArea < Base
    attribute :position, TD::Types::StoryAreaPosition
    attribute :type, TD::Types::InputStoryAreaType
  end
end
