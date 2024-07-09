module TD::Types
  # A chat content was allowed or restricted for saving.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr has_protected_content [Boolean] New value of has_protected_content.
  class Update::ChatHasProtectedContent < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :has_protected_content, TD::Types::Bool
  end
end
