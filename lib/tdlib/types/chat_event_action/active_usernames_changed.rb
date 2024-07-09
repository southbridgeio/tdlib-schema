module TD::Types
  # The chat active usernames were changed.
  #
  # @attr old_usernames [Array<TD::Types::String>] Previous list of active usernames.
  # @attr new_usernames [Array<TD::Types::String>] New list of active usernames.
  class ChatEventAction::ActiveUsernamesChanged < ChatEventAction
    attribute :old_usernames, TD::Types::Array.of(TD::Types::String)
    attribute :new_usernames, TD::Types::Array.of(TD::Types::String)
  end
end
