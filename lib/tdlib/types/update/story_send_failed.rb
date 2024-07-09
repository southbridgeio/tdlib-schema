module TD::Types
  # A story failed to send.
  # If the story sending is canceled, then updateStoryDeleted will be received instead of this update.
  #
  # @attr story [TD::Types::Story] The failed to send story.
  # @attr error [TD::Types::Error] The cause of the story sending failure.
  # @attr error_type [TD::Types::CanSendStoryResult, nil] Type of the error; may be null if unknown.
  class Update::StorySendFailed < Update
    attribute :story, TD::Types::Story
    attribute :error, TD::Types::Error
    attribute :error_type, TD::Types::CanSendStoryResult.optional.default(nil)
  end
end
