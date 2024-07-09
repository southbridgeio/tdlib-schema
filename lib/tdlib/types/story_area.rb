module TD::Types
  # Describes a clickable rectangle area on a story media.
  #
  # @attr position [TD::Types::StoryAreaPosition] Position of the area.
  # @attr type [TD::Types::StoryAreaType] Type of the area.
  class StoryArea < Base
    attribute :position, TD::Types::StoryAreaPosition
    attribute :type, TD::Types::StoryAreaType
  end
end
