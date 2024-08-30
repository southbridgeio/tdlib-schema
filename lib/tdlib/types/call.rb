module TD::Types
  # Describes a call.
  #
  # @attr id [Integer] Call identifier, not persistent.
  # @attr user_id [Integer] User identifier of the other call participant.
  # @attr is_outgoing [Boolean] True, if the call is outgoing.
  # @attr is_video [Boolean] True, if the call is a video call.
  # @attr state [TD::Types::CallState] Call state.
  class Call < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :is_outgoing, TD::Types::Bool
    attribute :is_video, TD::Types::Bool
    attribute :state, TD::Types::CallState
  end
end
