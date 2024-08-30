module TD::Types
  # Represents a chat event.
  #
  # @attr id [Integer] Chat event identifier.
  # @attr date [Integer] Point in time (Unix timestamp) when the event happened.
  # @attr member_id [TD::Types::MessageSender] Identifier of the user or chat who performed the action.
  # @attr action [TD::Types::ChatEventAction] The action.
  class ChatEvent < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :member_id, TD::Types::MessageSender
    attribute :action, TD::Types::ChatEventAction
  end
end
