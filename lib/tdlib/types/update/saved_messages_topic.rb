module TD::Types
  # Basic information about a Saved Messages topic has changed.
  # This update is guaranteed to come before the topic identifier is returned to the application.
  #
  # @attr topic [TD::Types::SavedMessagesTopic] New data about the topic.
  class Update::SavedMessagesTopic < Update
    attribute :topic, TD::Types::SavedMessagesTopic
  end
end
