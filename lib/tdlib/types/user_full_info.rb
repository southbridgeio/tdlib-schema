module TD::Types
  # Contains full information about a user.
  #
  # @attr personal_photo [TD::Types::ChatPhoto, nil] User profile photo set by the current user for the contact; may be
  #   null.
  #   If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.
  #   If non-null, then it is the same photo as in user.profile_photo and chat.photo.
  #   This photo isn't returned in the list of user photos.
  # @attr photo [TD::Types::ChatPhoto, nil] User profile photo; may be null.
  #   If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.
  #   If non-null and personal_photo is null, then it is the same photo as in user.profile_photo and chat.photo.
  # @attr public_photo [TD::Types::ChatPhoto, nil] User profile photo visible if the main photo is hidden by privacy
  #   settings; may be null.
  #   If null and user.profile_photo is null, then the photo is empty; otherwise, it is unknown.
  #   If non-null and both photo and personal_photo are null, then it is the same photo as in user.profile_photo and
  #   chat.photo.
  #   This photo isn't returned in the list of user photos.
  # @attr block_list [TD::Types::BlockList, nil] Block list to which the user is added; may be null if none.
  # @attr can_be_called [Boolean] True, if the user can be called.
  # @attr supports_video_calls [Boolean] True, if a video call can be created with the user.
  # @attr has_private_calls [Boolean] True, if the user can't be called due to their privacy settings.
  # @attr has_private_forwards [Boolean] True, if the user can't be linked in forwarded messages due to their privacy
  #   settings.
  # @attr has_restricted_voice_and_video_note_messages [Boolean] True, if voice and video notes can't be sent or
  #   forwarded to the user.
  # @attr has_posted_to_profile_stories [Boolean] True, if the user has posted to profile stories.
  # @attr has_sponsored_messages_enabled [Boolean] True, if the user always enabled sponsored messages; known only for
  #   the current user.
  # @attr need_phone_number_privacy_exception [Boolean] True, if the current user needs to explicitly allow to share
  #   their phone number with the user when the method addContact is used.
  # @attr set_chat_background [Boolean] True, if the user set chat background for both chat users and it wasn't
  #   reverted yet.
  # @attr bio [TD::Types::FormattedText, nil] A short user bio; may be null for bots.
  # @attr birthdate [TD::Types::Birthdate, nil] Birthdate of the user; may be null if unknown.
  # @attr personal_chat_id [Integer] Identifier of the personal chat of the user; 0 if none.
  # @attr premium_gift_options [Array<TD::Types::PremiumPaymentOption>] The list of available options for gifting
  #   Telegram Premium to the user.
  # @attr group_in_common_count [Integer] Number of group chats where both the other user and the current user are a
  #   member; 0 for the current user.
  # @attr business_info [TD::Types::BusinessInfo, nil] Information about business settings for Telegram Business
  #   accounts; may be null if none.
  # @attr bot_info [TD::Types::BotInfo, nil] For bots, information about the bot; may be null if the user isn't a bot.
  class UserFullInfo < Base
    attribute :personal_photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :public_photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :block_list, TD::Types::BlockList.optional.default(nil)
    attribute :can_be_called, TD::Types::Bool
    attribute :supports_video_calls, TD::Types::Bool
    attribute :has_private_calls, TD::Types::Bool
    attribute :has_private_forwards, TD::Types::Bool
    attribute :has_restricted_voice_and_video_note_messages, TD::Types::Bool
    attribute :has_posted_to_profile_stories, TD::Types::Bool
    attribute :has_sponsored_messages_enabled, TD::Types::Bool
    attribute :need_phone_number_privacy_exception, TD::Types::Bool
    attribute :set_chat_background, TD::Types::Bool
    attribute :bio, TD::Types::FormattedText.optional.default(nil)
    attribute :birthdate, TD::Types::Birthdate.optional.default(nil)
    attribute :personal_chat_id, TD::Types::Coercible::Integer
    attribute :premium_gift_options, TD::Types::Array.of(TD::Types::PremiumPaymentOption)
    attribute :group_in_common_count, TD::Types::Coercible::Integer
    attribute :business_info, TD::Types::BusinessInfo.optional.default(nil)
    attribute :bot_info, TD::Types::BotInfo.optional.default(nil)
  end
end
