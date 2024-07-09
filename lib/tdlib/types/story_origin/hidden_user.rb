module TD::Types
  # The original story was sent by an unknown user.
  #
  # @attr sender_name [TD::Types::String] Name of the story sender.
  class StoryOrigin::HiddenUser < StoryOrigin
    attribute :sender_name, TD::Types::String
  end
end
