module TD::Types
  # Contains a chat folder invite link.
  #
  # @attr invite_link [TD::Types::String] The chat folder invite link.
  # @attr name [TD::Types::String] Name of the link.
  # @attr chat_ids [Array<Integer>] Identifiers of chats, included in the link.
  class ChatFolderInviteLink < Base
    attribute :invite_link, TD::Types::String
    attribute :name, TD::Types::String
    attribute :chat_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
