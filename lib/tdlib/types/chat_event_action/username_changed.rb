module TD::Types
  # The chat editable username was changed.
  #
  # @attr old_username [TD::Types::String] Previous chat username.
  # @attr new_username [TD::Types::String] New chat username.
  class ChatEventAction::UsernameChanged < ChatEventAction
    attribute :old_username, TD::Types::String
    attribute :new_username, TD::Types::String
  end
end
