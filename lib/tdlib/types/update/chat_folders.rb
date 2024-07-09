module TD::Types
  # The list of chat folders or a chat folder has changed.
  #
  # @attr chat_folders [Array<TD::Types::ChatFolderInfo>] The new list of chat folders.
  # @attr main_chat_list_position [Integer] Position of the main chat list among chat folders, 0-based.
  # @attr are_tags_enabled [Boolean] True, if folder tags are enabled.
  class Update::ChatFolders < Update
    attribute :chat_folders, TD::Types::Array.of(TD::Types::ChatFolderInfo)
    attribute :main_chat_list_position, TD::Types::Coercible::Integer
    attribute :are_tags_enabled, TD::Types::Bool
  end
end
