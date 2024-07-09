module TD::Types
  # Contains a list of chat boost slots.
  #
  # @attr slots [Array<TD::Types::ChatBoostSlot>] List of boost slots.
  class ChatBoostSlots < Base
    attribute :slots, TD::Types::Array.of(TD::Types::ChatBoostSlot)
  end
end
