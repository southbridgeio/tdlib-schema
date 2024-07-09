module TD::Types
  # Contains parameters of the application theme.
  #
  # @attr background_color [Integer] A color of the background in the RGB24 format.
  # @attr secondary_background_color [Integer] A secondary color for the background in the RGB24 format.
  # @attr header_background_color [Integer] A color of the header background in the RGB24 format.
  # @attr section_background_color [Integer] A color of the section background in the RGB24 format.
  # @attr section_separator_color [Integer] A color of the section separator in the RGB24 format.
  # @attr text_color [Integer] A color of text in the RGB24 format.
  # @attr accent_text_color [Integer] An accent color of the text in the RGB24 format.
  # @attr section_header_text_color [Integer] A color of text on the section headers in the RGB24 format.
  # @attr subtitle_text_color [Integer] A color of the subtitle text in the RGB24 format.
  # @attr destructive_text_color [Integer] A color of the text for destructive actions in the RGB24 format.
  # @attr hint_color [Integer] A color of hints in the RGB24 format.
  # @attr link_color [Integer] A color of links in the RGB24 format.
  # @attr button_color [Integer] A color of the buttons in the RGB24 format.
  # @attr button_text_color [Integer] A color of text on the buttons in the RGB24 format.
  class ThemeParameters < Base
    attribute :background_color, TD::Types::Coercible::Integer
    attribute :secondary_background_color, TD::Types::Coercible::Integer
    attribute :header_background_color, TD::Types::Coercible::Integer
    attribute :section_background_color, TD::Types::Coercible::Integer
    attribute :section_separator_color, TD::Types::Coercible::Integer
    attribute :text_color, TD::Types::Coercible::Integer
    attribute :accent_text_color, TD::Types::Coercible::Integer
    attribute :section_header_text_color, TD::Types::Coercible::Integer
    attribute :subtitle_text_color, TD::Types::Coercible::Integer
    attribute :destructive_text_color, TD::Types::Coercible::Integer
    attribute :hint_color, TD::Types::Coercible::Integer
    attribute :link_color, TD::Types::Coercible::Integer
    attribute :button_color, TD::Types::Coercible::Integer
    attribute :button_text_color, TD::Types::Coercible::Integer
  end
end
