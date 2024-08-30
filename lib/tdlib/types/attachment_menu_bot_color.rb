module TD::Types
  # Describes a color to highlight a bot added to attachment menu.
  #
  # @attr light_color [Integer] Color in the RGB24 format for light themes.
  # @attr dark_color [Integer] Color in the RGB24 format for dark themes.
  class AttachmentMenuBotColor < Base
    attribute :light_color, TD::Types::Coercible::Integer
    attribute :dark_color, TD::Types::Coercible::Integer
  end
end
