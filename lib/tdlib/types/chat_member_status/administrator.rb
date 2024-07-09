module TD::Types
  # The user is a member of the chat and has some additional privileges.
  # In basic groups, administrators can edit and delete messages sent by others, add new members, ban unprivileged
  #   members, and manage video chats.
  # In supergroups and channels, there are more detailed options for administrator privileges.
  #
  # @attr custom_title [TD::Types::String] A custom title of the administrator; 0-16 characters without emoji;
  #   applicable to supergroups only.
  # @attr can_be_edited [Boolean] True, if the current user can edit the administrator privileges for the called user.
  # @attr rights [TD::Types::ChatAdministratorRights] Rights of the administrator.
  class ChatMemberStatus::Administrator < ChatMemberStatus
    attribute :custom_title, TD::Types::String
    attribute :can_be_edited, TD::Types::Bool
    attribute :rights, TD::Types::ChatAdministratorRights
  end
end
