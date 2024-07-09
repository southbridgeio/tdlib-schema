module TD::Types
  # A chat background was edited.
  #
  # @attr is_same [Boolean] True, if the set background is the same as the background of the current user.
  class PushMessageContent::ChatSetBackground < PushMessageContent
    attribute :is_same, TD::Types::Bool
  end
end
