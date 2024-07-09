module TD::Types
  # The user can't be messaged, because they restrict new chats with non-contacts.
  class CanSendMessageToUserResult::UserRestrictsNewChats < CanSendMessageToUserResult
  end
end
