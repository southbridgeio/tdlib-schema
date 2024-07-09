module TD::Types
  # An area pointing to a venue already added to the story.
  #
  # @attr venue_provider [TD::Types::String] Provider of the venue.
  # @attr venue_id [TD::Types::String] Identifier of the venue in the provider database.
  class InputStoryAreaType::PreviousVenue < InputStoryAreaType
    attribute :venue_provider, TD::Types::String
    attribute :venue_id, TD::Types::String
  end
end
