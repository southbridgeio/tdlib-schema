module TD::Types
  # A button that allows the user to create and send a poll when pressed; available only in private chats.
  #
  # @attr force_regular [Boolean] If true, only regular polls must be allowed to create.
  # @attr force_quiz [Boolean] If true, only polls in quiz mode must be allowed to create.
  class KeyboardButtonType::RequestPoll < KeyboardButtonType
    attribute :force_regular, TD::Types::Bool
    attribute :force_quiz, TD::Types::Bool
  end
end
