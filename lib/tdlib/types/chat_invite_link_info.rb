module TD::Types
  # Contains information about a chat invite link.
  #
  # @attr chat_id [Integer] Chat identifier of the invite link; 0 if the user has no access to the chat before joining.
  # @attr accessible_for [Integer] If non-zero, the amount of time for which read access to the chat will remain
  #   available, in seconds.
  # @attr type [TD::Types::ChatType] Contains information about the type of the chat.
  # @attr title [String] Title of the chat.
  # @attr photo [TD::Types::ChatPhotoInfo, nil] Chat photo; may be null.
  # @attr member_count [Integer] Number of members in the chat.
  # @attr member_user_ids [Array<Integer>] User identifiers of some chat members that may be known to the current user.
  # @attr is_public [Boolean] True, if the chat is a public supergroup or channel, i.e.
  #   it has a username or it is a location-based supergroup.
  class ChatInviteLinkInfo < Base
    attribute :chat_id, TD::Types::Integer
    attribute :accessible_for, TD::Types::Integer
    attribute :type, TD::Types::ChatType
    attribute :title, TD::Types::String
    attribute :photo, TD::Types::ChatPhotoInfo.optional.default(nil)
    attribute :member_count, TD::Types::Integer
    attribute :member_user_ids, TD::Types::Array.of(TD::Types::Integer)
    attribute :is_public, TD::Types::Bool
  end
end
