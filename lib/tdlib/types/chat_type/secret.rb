module TD::Types
  # A secret chat with a user.
  #
  # @attr secret_chat_id [Integer] Secret chat identifier.
  # @attr user_id [Integer] User identifier of the other user in the secret chat.
  class ChatType::Secret < ChatType
    attribute :secret_chat_id, TD::Types::Coercible::Integer
    attribute :user_id, TD::Types::Coercible::Integer
  end
end
