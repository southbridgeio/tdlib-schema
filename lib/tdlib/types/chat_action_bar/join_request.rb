module TD::Types
  # The chat is a private chat with an administrator of a chat to which the user sent join request.
  #
  # @attr title [TD::Types::String] Title of the chat to which the join request was sent.
  # @attr is_channel [Boolean] True, if the join request was sent to a channel chat.
  # @attr request_date [Integer] Point in time (Unix timestamp) when the join request was sent.
  class ChatActionBar::JoinRequest < ChatActionBar
    attribute :title, TD::Types::String
    attribute :is_channel, TD::Types::Bool
    attribute :request_date, TD::Types::Coercible::Integer
  end
end
