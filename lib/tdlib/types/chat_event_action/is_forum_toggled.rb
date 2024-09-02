module TD::Types
  # The is_forum setting of a channel was toggled.
  #
  # @attr is_forum [Boolean] New value of is_forum.
  class ChatEventAction::IsForumToggled < ChatEventAction
    attribute :is_forum, TD::Types::Bool
  end
end
