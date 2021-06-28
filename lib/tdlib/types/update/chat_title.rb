module TD::Types
  # The title of a chat was changed.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr title [TD::Types::String] The new chat title.
  class Update::ChatTitle < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :title, TD::Types::String
  end
end
