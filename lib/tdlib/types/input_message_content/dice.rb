module TD::Types
  # A dice message.
  #
  # @attr emoji [TD::Types::String] Emoji on which the dice throw animation is based.
  # @attr clear_draft [Boolean] True, if the chat message draft must be deleted.
  class InputMessageContent::Dice < InputMessageContent
    attribute :emoji, TD::Types::String
    attribute :clear_draft, TD::Types::Bool
  end
end
