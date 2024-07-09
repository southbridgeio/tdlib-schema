module TD::Types
  # Represents an icon for a chat folder.
  #
  # @attr name [TD::Types::String] The chosen icon name for short folder representation; one of "All", "Unread",
  #   "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom", "Setup", "Cat", "Crown", "Favorite", "Flower", "Game",
  #   "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade", "Travel", "Work", "Airplane", "Book", "Light", "Like",
  #   "Money", "Note", "Palette".
  class ChatFolderIcon < Base
    attribute :name, TD::Types::String
  end
end
