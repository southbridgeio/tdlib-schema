module TD::Types
  # The link is a link to a background.
  # Call searchBackground with the given background name to process the link.
  #
  # @attr background_name [TD::Types::String] Name of the background.
  class InternalLinkType::Background < InternalLinkType
    attribute :background_name, TD::Types::String
  end
end
