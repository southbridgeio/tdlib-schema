module TD::Types
  # Describes a recommended chat folder.
  #
  # @attr folder [TD::Types::ChatFolder] The chat folder.
  # @attr description [TD::Types::String] Chat folder description.
  class RecommendedChatFolder < Base
    attribute :folder, TD::Types::ChatFolder
    attribute :description, TD::Types::String
  end
end
