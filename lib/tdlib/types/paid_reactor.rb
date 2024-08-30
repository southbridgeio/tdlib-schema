module TD::Types
  # Contains information about a user that added paid reactions.
  #
  # @attr sender_id [TD::Types::MessageSender, nil] Identifier of the user or chat that added the reactions; may be
  #   null for anonymous reactors that aren't the current user.
  # @attr star_count [Integer] Number of Telegram Stars added.
  # @attr is_top [Boolean] True, if the reactor is one of the most active reactors; can be false if the reactor is the
  #   current user.
  # @attr is_me [Boolean] True, if the paid reaction was added by the current user.
  # @attr is_anonymous [Boolean] True, if the reactor is anonymous.
  class PaidReactor < Base
    attribute :sender_id, TD::Types::MessageSender.optional.default(nil)
    attribute :star_count, TD::Types::Coercible::Integer
    attribute :is_top, TD::Types::Bool
    attribute :is_me, TD::Types::Bool
    attribute :is_anonymous, TD::Types::Bool
  end
end
