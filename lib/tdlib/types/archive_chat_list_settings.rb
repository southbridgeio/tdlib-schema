module TD::Types
  # Contains settings for automatic moving of chats to and from the Archive chat lists.
  #
  # @attr archive_and_mute_new_chats_from_unknown_users [Boolean] True, if new chats from non-contacts will be
  #   automatically archived and muted.
  #   Can be set to true only if the option "can_archive_and_mute_new_chats_from_unknown_users" is true.
  # @attr keep_unmuted_chats_archived [Boolean] True, if unmuted chats will be kept in the Archive chat list when they
  #   get a new message.
  # @attr keep_chats_from_folders_archived [Boolean] True, if unmuted chats, that are always included or pinned in a
  #   folder, will be kept in the Archive chat list when they get a new message.
  #   Ignored if keep_unmuted_chats_archived == true.
  class ArchiveChatListSettings < Base
    attribute :archive_and_mute_new_chats_from_unknown_users, TD::Types::Bool
    attribute :keep_unmuted_chats_archived, TD::Types::Bool
    attribute :keep_chats_from_folders_archived, TD::Types::Bool
  end
end
