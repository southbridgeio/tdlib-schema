module TD::Types
  # Describes a recently speaking participant in a group call.
  #
  # @attr participant_id [TD::Types::MessageSender] Group call participant identifier.
  # @attr is_speaking [Boolean] True, is the user has spoken recently.
  class GroupCallRecentSpeaker < Base
    attribute :participant_id, TD::Types::MessageSender
    attribute :is_speaking, TD::Types::Bool
  end
end
