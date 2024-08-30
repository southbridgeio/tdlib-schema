module TD::Types
  # A supergroup or channel (with unlimited members).
  #
  # @attr supergroup_id [Integer] Supergroup or channel identifier.
  # @attr is_channel [Boolean] True, if the supergroup is a channel.
  class ChatType::Supergroup < ChatType
    attribute :supergroup_id, TD::Types::Coercible::Integer
    attribute :is_channel, TD::Types::Bool
  end
end
