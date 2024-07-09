module TD::Types
  # A button that requests a chat to be shared by the current user; available only in private chats.
  # Use the method shareChatWithBot to complete the request.
  #
  # @attr id [Integer] Unique button identifier.
  # @attr chat_is_channel [Boolean] True, if the chat must be a channel; otherwise, a basic group or a supergroup chat
  #   is shared.
  # @attr restrict_chat_is_forum [Boolean] True, if the chat must or must not be a forum supergroup.
  # @attr chat_is_forum [Boolean] True, if the chat must be a forum supergroup; otherwise, the chat must not be a forum
  #   supergroup.
  #   Ignored if restrict_chat_is_forum is false.
  # @attr restrict_chat_has_username [Boolean] True, if the chat must or must not have a username.
  # @attr chat_has_username [Boolean] True, if the chat must have a username; otherwise, the chat must not have a
  #   username.
  #   Ignored if restrict_chat_has_username is false.
  # @attr chat_is_created [Boolean] True, if the chat must be created by the current user.
  # @attr user_administrator_rights [TD::Types::ChatAdministratorRights, nil] Expected user administrator rights in the
  #   chat; may be null if they aren't restricted.
  # @attr bot_administrator_rights [TD::Types::ChatAdministratorRights, nil] Expected bot administrator rights in the
  #   chat; may be null if they aren't restricted.
  # @attr bot_is_member [Boolean] True, if the bot must be a member of the chat; for basic group and supergroup chats
  #   only.
  # @attr request_title [Boolean] Pass true to request title of the chat; bots only.
  # @attr request_username [Boolean] Pass true to request username of the chat; bots only.
  # @attr request_photo [Boolean] Pass true to request photo of the chat; bots only.
  class KeyboardButtonType::RequestChat < KeyboardButtonType
    attribute :id, TD::Types::Coercible::Integer
    attribute :chat_is_channel, TD::Types::Bool
    attribute :restrict_chat_is_forum, TD::Types::Bool
    attribute :chat_is_forum, TD::Types::Bool
    attribute :restrict_chat_has_username, TD::Types::Bool
    attribute :chat_has_username, TD::Types::Bool
    attribute :chat_is_created, TD::Types::Bool
    attribute :user_administrator_rights, TD::Types::ChatAdministratorRights.optional.default(nil)
    attribute :bot_administrator_rights, TD::Types::ChatAdministratorRights.optional.default(nil)
    attribute :bot_is_member, TD::Types::Bool
    attribute :request_title, TD::Types::Bool
    attribute :request_username, TD::Types::Bool
    attribute :request_photo, TD::Types::Bool
  end
end
