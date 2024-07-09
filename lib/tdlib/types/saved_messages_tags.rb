module TD::Types
  # Contains a list of tags used in Saved Messages.
  #
  # @attr tags [Array<TD::Types::SavedMessagesTag>] List of tags.
  class SavedMessagesTags < Base
    attribute :tags, TD::Types::Array.of(TD::Types::SavedMessagesTag)
  end
end
