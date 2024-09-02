module TD::Types
  # Contains information about an invite link to a chat folder.
  #
  # @attr chat_folder_info [TD::Types::ChatFolderInfo] Basic information about the chat folder; chat folder identifier
  #   will be 0 if the user didn't have the chat folder yet.
  # @attr missing_chat_ids [Array<Integer>] Identifiers of the chats from the link, which aren't added to the folder
  #   yet.
  # @attr added_chat_ids [Array<Integer>] Identifiers of the chats from the link, which are added to the folder
  #   already.
  class ChatFolderInviteLinkInfo < Base
    attribute :chat_folder_info, TD::Types::ChatFolderInfo
    attribute :missing_chat_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :added_chat_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
