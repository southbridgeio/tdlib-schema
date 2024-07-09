module TD::Types
  # Describes private chats chosen for automatic interaction with a business.
  #
  # @attr chat_ids [Array<Integer>] Identifiers of selected private chats.
  # @attr excluded_chat_ids [Array<Integer>] Identifiers of private chats that are always excluded; for
  #   {TD::Types::BusinessConnectedBot} only.
  # @attr select_existing_chats [Boolean] True, if all existing private chats are selected.
  # @attr select_new_chats [Boolean] True, if all new private chats are selected.
  # @attr select_contacts [Boolean] True, if all private chats with contacts are selected.
  # @attr select_non_contacts [Boolean] True, if all private chats with non-contacts are selected.
  # @attr exclude_selected [Boolean] If true, then all private chats except the selected are chosen.
  #   Otherwise, only the selected chats are chosen.
  class BusinessRecipients < Base
    attribute :chat_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :excluded_chat_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :select_existing_chats, TD::Types::Bool
    attribute :select_new_chats, TD::Types::Bool
    attribute :select_contacts, TD::Types::Bool
    attribute :select_non_contacts, TD::Types::Bool
    attribute :exclude_selected, TD::Types::Bool
  end
end
