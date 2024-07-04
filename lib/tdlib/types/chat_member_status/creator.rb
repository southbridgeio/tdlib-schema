module TD::Types
  # The user is the owner of the chat and has all the administrator privileges.
  #
  # @attr custom_title [TD::Types::String] A custom title of the owner; 0-16 characters without emojis; applicable to
  #   supergroups only.
  # @attr is_anonymous [Boolean] True, if the creator isn't shown in the chat member list and sends messages
  #   anonymously; applicable to supergroups only.
  # @attr is_member [Boolean] True, if the user is a member of the chat.
  class ChatMemberStatus::Creator < ChatMemberStatus
    attribute :custom_title, TD::Types::String
    attribute :is_anonymous, TD::Types::Bool
    attribute :is_member, TD::Types::Bool
  end
end
