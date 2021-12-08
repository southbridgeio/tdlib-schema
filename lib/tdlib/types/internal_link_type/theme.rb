module TD::Types
  # The link is a link to a theme.
  # TDLib has no theme support yet.
  #
  # @attr theme_name [TD::Types::String] Name of the theme.
  class InternalLinkType::Theme < InternalLinkType
    attribute :theme_name, TD::Types::String
  end
end
