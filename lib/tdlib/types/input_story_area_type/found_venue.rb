module TD::Types
  # An area pointing to a venue found by the bot getOption("venue_search_bot_username").
  #
  # @attr query_id [Integer] Identifier of the inline query, used to found the venue.
  # @attr result_id [TD::Types::String] Identifier of the inline query result.
  class InputStoryAreaType::FoundVenue < InputStoryAreaType
    attribute :query_id, TD::Types::Coercible::Integer
    attribute :result_id, TD::Types::String
  end
end
