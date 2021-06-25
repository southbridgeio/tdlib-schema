module TD::Types
  # Contains basic information about a chat filter.
  #
  # @attr id [Integer] Unique chat filter identifier.
  # @attr title [String] The title of the filter; 1-12 characters without line feeds.
  # @attr icon_name [String] The icon name for short filter representation.
  #   One of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown",
  #   "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work".
  class ChatFilterInfo < Base
    attribute :id, TD::Types::Integer
    attribute :title, TD::Types::String
    attribute :icon_name, TD::Types::String
  end
end
