module TD::Types
  # Contains a list of recommended chat folders.
  #
  # @attr chat_folders [Array<TD::Types::RecommendedChatFolder>] List of recommended chat folders.
  class RecommendedChatFolders < Base
    attribute :chat_folders, TD::Types::Array.of(TD::Types::RecommendedChatFolder)
  end
end
