module TD::Types
  # A message with information about a venue.
  #
  # @attr venue [TD::Types::Venue] The venue description.
  class MessageContent::Venue < MessageContent
    attribute :venue, TD::Types::Venue
  end
end
