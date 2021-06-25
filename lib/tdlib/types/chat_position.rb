module TD::Types
  # Describes a position of a chat in a chat list.
  #
  # @attr list [TD::Types::ChatList] The chat list.
  # @attr order [Integer] A parameter used to determine order of the chat in the chat list.
  #   Chats must be sorted by the pair (order, chat.id) in descending order.
  # @attr is_pinned [Boolean] True, if the chat is pinned in the chat list.
  # @attr source [TD::Types::ChatSource, nil] Source of the chat in the chat list; may be null.
  class ChatPosition < Base
    attribute :list, TD::Types::ChatList
    attribute :order, TD::Types::Integer
    attribute :is_pinned, TD::Types::Bool
    attribute :source, TD::Types::ChatSource.optional.default(nil)
  end
end
