module TD::Types
  # Represents a filter of user chats.
  #
  # @attr title [String] The title of the filter; 1-12 characters without line feeds.
  # @attr icon_name [String, nil] The icon name for short filter representation.
  #   If non-empty, must be one of "All", "Unread", "Unmuted", "Bots", "Channels", "Groups", "Private", "Custom",
  #   "Setup", "Cat", "Crown", "Favorite", "Flower", "Game", "Home", "Love", "Mask", "Party", "Sport", "Study", "Trade",
  #   "Travel", "Work".
  #   If empty, use getChatFilterDefaultIconName to get default icon name for the filter.
  # @attr pinned_chat_ids [Array<Integer>] The chat identifiers of pinned chats in the filtered chat list.
  # @attr included_chat_ids [Array<Integer>] The chat identifiers of always included chats in the filtered chat list.
  # @attr excluded_chat_ids [Array<Integer>] The chat identifiers of always excluded chats in the filtered chat list.
  # @attr exclude_muted [Boolean] True, if muted chats need to be excluded.
  # @attr exclude_read [Boolean] True, if read chats need to be excluded.
  # @attr exclude_archived [Boolean] True, if archived chats need to be excluded.
  # @attr include_contacts [Boolean] True, if contacts need to be included.
  # @attr include_non_contacts [Boolean] True, if non-contact users need to be included.
  # @attr include_bots [Boolean] True, if bots need to be included.
  # @attr include_groups [Boolean] True, if basic groups and supergroups need to be included.
  # @attr include_channels [Boolean] True, if channels need to be included.
  class ChatFilter < Base
    attribute :title, TD::Types::String
    attribute :icon_name, TD::Types::String.optional.default(nil)
    attribute :pinned_chat_ids, TD::Types::Array.of(TD::Types::Integer)
    attribute :included_chat_ids, TD::Types::Array.of(TD::Types::Integer)
    attribute :excluded_chat_ids, TD::Types::Array.of(TD::Types::Integer)
    attribute :exclude_muted, TD::Types::Bool
    attribute :exclude_read, TD::Types::Bool
    attribute :exclude_archived, TD::Types::Bool
    attribute :include_contacts, TD::Types::Bool
    attribute :include_non_contacts, TD::Types::Bool
    attribute :include_bots, TD::Types::Bool
    attribute :include_groups, TD::Types::Bool
    attribute :include_channels, TD::Types::Bool
  end
end
