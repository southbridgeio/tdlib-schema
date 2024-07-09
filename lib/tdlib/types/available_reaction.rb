module TD::Types
  # Represents an available reaction.
  #
  # @attr type [TD::Types::ReactionType] Type of the reaction.
  # @attr needs_premium [Boolean] True, if Telegram Premium is needed to send the reaction.
  class AvailableReaction < Base
    attribute :type, TD::Types::ReactionType
    attribute :needs_premium, TD::Types::Bool
  end
end
