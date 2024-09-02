module TD::Types
  # The chat needs to be chosen by the user among chats of the specified types.
  #
  # @attr allow_user_chats [Boolean] True, if private chats with ordinary users are allowed.
  # @attr allow_bot_chats [Boolean] True, if private chats with other bots are allowed.
  # @attr allow_group_chats [Boolean] True, if basic group and supergroup chats are allowed.
  # @attr allow_channel_chats [Boolean] True, if channel chats are allowed.
  class TargetChat::Chosen < TargetChat
    attribute :allow_user_chats, TD::Types::Bool
    attribute :allow_bot_chats, TD::Types::Bool
    attribute :allow_group_chats, TD::Types::Bool
    attribute :allow_channel_chats, TD::Types::Bool
  end
end
