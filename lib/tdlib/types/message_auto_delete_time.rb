module TD::Types
  # Contains default auto-delete timer setting for new chats.
  #
  # @attr time [Integer] Message auto-delete time, in seconds.
  #   If 0, then messages aren't deleted automatically.
  class MessageAutoDeleteTime < Base
    attribute :time, TD::Types::Coercible::Integer
  end
end
