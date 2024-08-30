module TD::Types
  # The user is watching animations sent by the other party by clicking on an animated emoji.
  #
  # @attr emoji [TD::Types::String] The animated emoji.
  class ChatAction::WatchingAnimations < ChatAction
    attribute :emoji, TD::Types::String
  end
end
