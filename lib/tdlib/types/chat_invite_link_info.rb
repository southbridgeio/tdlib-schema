module TD::Types
  # Contains information about a chat invite link.
  #
  # @attr chat_id [Integer] Chat identifier of the invite link; 0 if the user has no access to the chat before joining.
  # @attr accessible_for [Integer] If non-zero, the amount of time for which read access to the chat will remain
  #   available, in seconds.
  # @attr type [TD::Types::InviteLinkChatType] Type of the chat.
  # @attr title [TD::Types::String] Title of the chat.
  # @attr photo [TD::Types::ChatPhotoInfo, nil] Chat photo; may be null.
  # @attr accent_color_id [Integer] Identifier of the accent color for chat title and background of chat photo.
  # @attr description [TD::Types::String] Chat description.
  # @attr member_count [Integer] Number of members in the chat.
  # @attr member_user_ids [Array<Integer>] User identifiers of some chat members that may be known to the current user.
  # @attr creates_join_request [Boolean] True, if the link only creates join request.
  # @attr is_public [Boolean] True, if the chat is a public supergroup or channel, i.e.
  #   it has a username or it is a location-based supergroup.
  # @attr is_verified [Boolean] True, if the chat is verified.
  # @attr is_scam [Boolean] True, if many users reported this chat as a scam.
  # @attr is_fake [Boolean] True, if many users reported this chat as a fake account.
  class ChatInviteLinkInfo < Base
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :accessible_for, TD::Types::Coercible::Integer
    attribute :type, TD::Types::InviteLinkChatType
    attribute :title, TD::Types::String
    attribute :photo, TD::Types::ChatPhotoInfo.optional.default(nil)
    attribute :accent_color_id, TD::Types::Coercible::Integer
    attribute :description, TD::Types::String
    attribute :member_count, TD::Types::Coercible::Integer
    attribute :member_user_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :creates_join_request, TD::Types::Bool
    attribute :is_public, TD::Types::Bool
    attribute :is_verified, TD::Types::Bool
    attribute :is_scam, TD::Types::Bool
    attribute :is_fake, TD::Types::Bool
  end
end
