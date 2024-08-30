module TD::Types
  # Represents a folder for user chats.
  #
  # @attr title [TD::Types::String] The title of the folder; 1-12 characters without line feeds.
  # @attr icon [TD::Types::ChatFolderIcon, nil] The chosen icon for the chat folder; may be null.
  #   If null, use getChatFolderDefaultIconName to get default icon name for the folder.
  # @attr color_id [Integer] The identifier of the chosen color for the chat folder icon; from -1 to 6.
  #   If -1, then color is disabled.
  #   Can't be changed if folder tags are disabled or the current user doesn't have Telegram Premium subscription.
  # @attr is_shareable [Boolean] True, if at least one link has been created for the folder.
  # @attr pinned_chat_ids [Array<Integer>] The chat identifiers of pinned chats in the folder.
  #   There can be up to getOption("chat_folder_chosen_chat_count_max") pinned and always included non-secret chats and
  #   the same number of secret chats, but the limit can be increased with Telegram Premium.
  # @attr included_chat_ids [Array<Integer>] The chat identifiers of always included chats in the folder.
  #   There can be up to getOption("chat_folder_chosen_chat_count_max") pinned and always included non-secret chats and
  #   the same number of secret chats, but the limit can be increased with Telegram Premium.
  # @attr excluded_chat_ids [Array<Integer>] The chat identifiers of always excluded chats in the folder.
  #   There can be up to getOption("chat_folder_chosen_chat_count_max") always excluded non-secret chats and the same
  #   number of secret chats, but the limit can be increased with Telegram Premium.
  # @attr exclude_muted [Boolean] True, if muted chats need to be excluded.
  # @attr exclude_read [Boolean] True, if read chats need to be excluded.
  # @attr exclude_archived [Boolean] True, if archived chats need to be excluded.
  # @attr include_contacts [Boolean] True, if contacts need to be included.
  # @attr include_non_contacts [Boolean] True, if non-contact users need to be included.
  # @attr include_bots [Boolean] True, if bots need to be included.
  # @attr include_groups [Boolean] True, if basic groups and supergroups need to be included.
  # @attr include_channels [Boolean] True, if channels need to be included.
  class ChatFolder < Base
    attribute :title, TD::Types::String
    attribute :icon, TD::Types::ChatFolderIcon.optional.default(nil)
    attribute :color_id, TD::Types::Coercible::Integer
    attribute :is_shareable, TD::Types::Bool
    attribute :pinned_chat_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :included_chat_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :excluded_chat_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
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
