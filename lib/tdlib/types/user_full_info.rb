module TD::Types
  # Contains full information about a user.
  #
  # @attr photo [TD::Types::ChatPhoto, nil] User profile photo; may be null.
  # @attr is_blocked [Boolean] True, if the user is blocked by the current user.
  # @attr can_be_called [Boolean] True, if the user can be called.
  # @attr supports_video_calls [Boolean] True, if a video call can be created with the user.
  # @attr has_private_calls [Boolean] True, if the user can't be called due to their privacy settings.
  # @attr need_phone_number_privacy_exception [Boolean] True, if the current user needs to explicitly allow to share
  #   their phone number with the user when the method addContact is used.
  # @attr bio [TD::Types::String] A short user bio.
  # @attr share_text [TD::Types::String] For bots, the text that is shown on the bot's profile page and is sent
  #   together with the link when users share the bot.
  # @attr description [TD::Types::String] For bots, the text shown in the chat with the bot if the chat is empty.
  # @attr group_in_common_count [Integer] Number of group chats where both the other user and the current user are a
  #   member; 0 for the current user.
  # @attr commands [Array<TD::Types::BotCommand>] For bots, list of the bot commands.
  class UserFullInfo < Base
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :is_blocked, TD::Types::Bool
    attribute :can_be_called, TD::Types::Bool
    attribute :supports_video_calls, TD::Types::Bool
    attribute :has_private_calls, TD::Types::Bool
    attribute :need_phone_number_privacy_exception, TD::Types::Bool
    attribute :bio, TD::Types::String
    attribute :share_text, TD::Types::String
    attribute :description, TD::Types::String
    attribute :group_in_common_count, TD::Types::Coercible::Integer
    attribute :commands, TD::Types::Array.of(TD::Types::BotCommand)
  end
end
