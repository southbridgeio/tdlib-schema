module TD::Types
  # A background previously set in the chat; for chat backgrounds only.
  #
  # @attr message_id [Integer] Identifier of the message with the background.
  class InputBackground::Previous < InputBackground
    attribute :message_id, TD::Types::Coercible::Integer
  end
end
