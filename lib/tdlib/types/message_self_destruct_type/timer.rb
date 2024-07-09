module TD::Types
  # The message will be self-destructed in the specified time after its content was opened.
  #
  # @attr self_destruct_time [Integer] The message's self-destruct time, in seconds; must be between 0 and 60 in
  #   private chats.
  class MessageSelfDestructType::Timer < MessageSelfDestructType
    attribute :self_destruct_time, TD::Types::Coercible::Integer
  end
end
