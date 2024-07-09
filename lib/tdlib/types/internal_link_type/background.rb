module TD::Types
  # The link is a link to a background.
  # Call searchBackground with the given background name to process the link If background is found and the user wants
  #   to apply it, then call setDefaultBackground.
  #
  # @attr background_name [TD::Types::String] Name of the background.
  class InternalLinkType::Background < InternalLinkType
    attribute :background_name, TD::Types::String
  end
end
