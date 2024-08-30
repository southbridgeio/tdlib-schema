# This is a generated module from current TDLib scheme
# It contains all available TDLib methods
module TD::ClientMethods
  # Accepts an incoming call.
  #
  # @param call_id [Integer] Call identifier.
  # @param protocol [TD::Types::CallProtocol] The call protocols supported by the application.
  # @return [TD::Types::Ok]
  def accept_call(call_id:, protocol:)
    broadcast('@type'    => 'acceptCall',
              'call_id'  => call_id,
              'protocol' => protocol)
  end
  
  # Accepts Telegram terms of services.
  #
  # @param terms_of_service_id [TD::Types::String] Terms of service identifier.
  # @return [TD::Types::Ok]
  def accept_terms_of_service(terms_of_service_id:)
    broadcast('@type'               => 'acceptTermsOfService',
              'terms_of_service_id' => terms_of_service_id)
  end
  
  # Activates stealth mode for stories, which hides all views of stories from the current user in the last
  #   "story_stealth_mode_past_period" seconds and for the next "story_stealth_mode_future_period" seconds; for Telegram
  #   Premium users only.
  #
  # @return [TD::Types::Ok]
  def activate_story_stealth_mode
    broadcast('@type' => 'activateStoryStealthMode')
  end
  
  # Adds a new media preview to the beginning of the list of media previews of a bot.
  # Returns the added preview after addition is completed server-side.
  # The total number of previews must not exceed getOption("bot_media_preview_count_max") for the given language.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  #   The bot must be owned and must have the main Web App.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code for which preview is added.
  #   If empty, then the preview will be shown to all users for whose languages there are no dedicated previews.
  #   If non-empty, then there must be an official language pack of the same name, which is returned by
  #   getLocalizationTargetInfo.
  # @param content [TD::Types::InputStoryContent] Content of the added preview.
  # @return [TD::Types::BotMediaPreview]
  def add_bot_media_preview(bot_user_id:, language_code:, content:)
    broadcast('@type'         => 'addBotMediaPreview',
              'bot_user_id'   => bot_user_id,
              'language_code' => language_code,
              'content'       => content)
  end
  
  # Adds a chat folder by an invite link.
  #
  # @param invite_link [TD::Types::String] Invite link for the chat folder.
  # @param chat_ids [Array<Integer>] Identifiers of the chats added to the chat folder.
  #   The chats are automatically joined if they aren't joined yet.
  # @return [TD::Types::Ok]
  def add_chat_folder_by_invite_link(invite_link:, chat_ids:)
    broadcast('@type'       => 'addChatFolderByInviteLink',
              'invite_link' => invite_link,
              'chat_ids'    => chat_ids)
  end
  
  # Adds a new member to a chat; requires can_invite_users member right.
  # Members can't be added to private or secret chats.
  # Returns information about members that weren't added.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_id [Integer] Identifier of the user.
  # @param forward_limit [Integer] The number of earlier messages from the chat to be forwarded to the new member; up
  #   to 100.
  #   Ignored for supergroups and channels, or if the added user is a bot.
  # @return [TD::Types::FailedToAddMembers]
  def add_chat_member(chat_id:, user_id:, forward_limit:)
    broadcast('@type'         => 'addChatMember',
              'chat_id'       => chat_id,
              'user_id'       => user_id,
              'forward_limit' => forward_limit)
  end
  
  # Adds multiple new members to a chat; requires can_invite_users member right.
  # Currently, this method is only available for supergroups and channels.
  # This method can't be used to join a chat.
  # Members can't be added to a channel if it has more than 200 members.
  # Returns information about members that weren't added.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_ids [Array<Integer>] Identifiers of the users to be added to the chat.
  #   The maximum number of added users is 20 for supergroups and 100 for channels.
  # @return [TD::Types::FailedToAddMembers]
  def add_chat_members(chat_id:, user_ids:)
    broadcast('@type'    => 'addChatMembers',
              'chat_id'  => chat_id,
              'user_ids' => user_ids)
  end
  
  # Adds a chat to a chat list.
  # A chat can't be simultaneously in Main and Archive chat lists, so it is automatically removed from another one if
  #   needed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param chat_list [TD::Types::ChatList] The chat list.
  #   Use getChatListsToAddChat to get suitable chat lists.
  # @return [TD::Types::Ok]
  def add_chat_to_list(chat_id:, chat_list:)
    broadcast('@type'     => 'addChatToList',
              'chat_id'   => chat_id,
              'chat_list' => chat_list)
  end
  
  # Adds a user to the contact list or edits an existing contact by their user identifier.
  #
  # @param contact [TD::Types::Contact, nil] The contact to add or edit; phone number may be empty and needs to be
  #   specified only if known, vCard is ignored.
  # @param share_phone_number [Boolean] Pass true to share the current user's phone number with the new contact.
  #   A corresponding rule to {TD::Types::UserPrivacySetting::ShowPhoneNumber} will be added if needed.
  #   Use the field userFullInfo.need_phone_number_privacy_exception to check whether the current user needs to be
  #   asked to share their phone number.
  # @return [TD::Types::Ok]
  def add_contact(contact: nil, share_phone_number:)
    broadcast('@type'              => 'addContact',
              'contact'            => contact,
              'share_phone_number' => share_phone_number)
  end
  
  # Adds a custom server language pack to the list of installed language packs in current localization target.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Identifier of a language pack to be added.
  # @return [TD::Types::Ok]
  def add_custom_server_language_pack(language_pack_id:)
    broadcast('@type'            => 'addCustomServerLanguagePack',
              'language_pack_id' => language_pack_id)
  end
  
  # Adds a new sticker to the list of favorite stickers.
  # The new sticker is added to the top of the list.
  # If the sticker was already in the list, it is removed from the list first.
  # Only stickers belonging to a sticker set or in WEBP or WEBM format can be added to this list.
  # Emoji stickers can't be added to favorite stickers.
  #
  # @param sticker [TD::Types::InputFile] Sticker file to add.
  # @return [TD::Types::Ok]
  def add_favorite_sticker(sticker:)
    broadcast('@type'   => 'addFavoriteSticker',
              'sticker' => sticker)
  end
  
  # Adds a file from a message to the list of file downloads.
  # Download progress and completion of the download will be notified through updateFile updates.
  # If message database is used, the list of file downloads is persistent across application restarts.
  # The downloading is independent of download using downloadFile, i.e.
  # it continues if downloadFile is canceled or is used to download a part of the file.
  #
  # @param file_id [Integer] Identifier of the file to download.
  # @param chat_id [Integer] Chat identifier of the message with the file.
  # @param message_id [Integer] Message identifier.
  # @param priority [Integer] Priority of the download (1-32).
  #   The higher the priority, the earlier the file will be downloaded.
  #   If the priorities of two files are equal, then the last one for which downloadFile/addFileToDownloads was called
  #   will be downloaded first.
  # @return [TD::Types::File]
  def add_file_to_downloads(file_id:, chat_id:, message_id:, priority:)
    broadcast('@type'      => 'addFileToDownloads',
              'file_id'    => file_id,
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'priority'   => priority)
  end
  
  # Adds a local message to a chat.
  # The message is persistent across application restarts only if the message database is used.
  # Returns the added message.
  #
  # @param chat_id [Integer] Target chat.
  # @param sender_id [TD::Types::MessageSender] Identifier of the sender of the message.
  # @param reply_to [TD::Types::InputMessageReplyTo] Information about the message or story to be replied; pass null if
  #   none.
  # @param disable_notification [Boolean] Pass true to disable notification for the message.
  # @param input_message_content [TD::Types::InputMessageContent] The content of the message to be added.
  # @return [TD::Types::Message]
  def add_local_message(chat_id:, sender_id:, reply_to:, disable_notification:, input_message_content:)
    broadcast('@type'                 => 'addLocalMessage',
              'chat_id'               => chat_id,
              'sender_id'             => sender_id,
              'reply_to'              => reply_to,
              'disable_notification'  => disable_notification,
              'input_message_content' => input_message_content)
  end
  
  # Adds a message to TDLib internal log.
  # Can be called synchronously.
  #
  # @param verbosity_level [Integer] The minimum verbosity level needed for the message to be logged; 0-1023.
  # @param text [TD::Types::String] Text of a message to log.
  # @return [TD::Types::Ok]
  def add_log_message(verbosity_level:, text:)
    broadcast('@type'           => 'addLogMessage',
              'verbosity_level' => verbosity_level,
              'text'            => text)
  end
  
  # Adds a reaction or a tag to a message.
  # Use getMessageAvailableReactions to receive the list of available reactions for the message.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param reaction_type [TD::Types::ReactionType] Type of the reaction to add.
  #   Use addPaidMessageReaction instead to add the paid reaction.
  # @param is_big [Boolean] Pass true if the reaction is added with a big animation.
  # @param update_recent_reactions [Boolean] Pass true if the reaction needs to be added to recent reactions; tags are
  #   never added to the list of recent reactions.
  # @return [TD::Types::Ok]
  def add_message_reaction(chat_id:, message_id:, reaction_type:, is_big:, update_recent_reactions:)
    broadcast('@type'                   => 'addMessageReaction',
              'chat_id'                 => chat_id,
              'message_id'              => message_id,
              'reaction_type'           => reaction_type,
              'is_big'                  => is_big,
              'update_recent_reactions' => update_recent_reactions)
  end
  
  # Adds the specified data to data usage statistics.
  # Can be called before authorization.
  #
  # @param entry [TD::Types::NetworkStatisticsEntry] The network statistics entry with the data to be added to
  #   statistics.
  # @return [TD::Types::Ok]
  def add_network_statistics(entry:)
    broadcast('@type' => 'addNetworkStatistics',
              'entry' => entry)
  end
  
  # Adds the paid message reaction to a message.
  # Use getMessageAvailableReactions to receive the list of available reactions for the message.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param star_count [Integer] Number of Telegram Stars to be used for the reaction;
  #   1-getOption("paid_reaction_star_count_max").
  # @param is_anonymous [Boolean] Pass true to make paid reaction of the user on the message anonymous; pass false to
  #   make the user's profile visible among top reactors.
  # @return [TD::Types::Ok]
  def add_paid_message_reaction(chat_id:, message_id:, star_count:, is_anonymous:)
    broadcast('@type'        => 'addPaidMessageReaction',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'star_count'   => star_count,
              'is_anonymous' => is_anonymous)
  end
  
  # Adds a proxy server for network requests.
  # Can be called before authorization.
  #
  # @param server [TD::Types::String] Proxy server domain or IP address.
  # @param port [Integer] Proxy server port.
  # @param enable [Boolean] Pass true to immediately enable the proxy.
  # @param type [TD::Types::ProxyType] Proxy type.
  # @return [TD::Types::Proxy]
  def add_proxy(server:, port:, enable:, type:)
    broadcast('@type'  => 'addProxy',
              'server' => server,
              'port'   => port,
              'enable' => enable,
              'type'   => type)
  end
  
  # Adds a message to a quick reply shortcut via inline bot.
  # If shortcut doesn't exist and there are less than getOption("quick_reply_shortcut_count_max") shortcuts, then a new
  #   shortcut is created.
  # The shortcut must not contain more than getOption("quick_reply_shortcut_message_count_max") messages after adding
  #   the new message.
  # Returns the added message.
  #
  # @param shortcut_name [TD::Types::String] Name of the target shortcut.
  # @param reply_to_message_id [Integer] Identifier of a quick reply message in the same shortcut to be replied; pass 0
  #   if none.
  # @param query_id [Integer] Identifier of the inline query.
  # @param result_id [TD::Types::String] Identifier of the inline query result.
  # @param hide_via_bot [Boolean] Pass true to hide the bot, via which the message is sent.
  #   Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and
  #   getOption("venue_search_bot_username").
  # @return [TD::Types::QuickReplyMessage]
  def add_quick_reply_shortcut_inline_query_result_message(shortcut_name:, reply_to_message_id:, query_id:, result_id:,
                                                           hide_via_bot:)
    broadcast('@type'               => 'addQuickReplyShortcutInlineQueryResultMessage',
              'shortcut_name'       => shortcut_name,
              'reply_to_message_id' => reply_to_message_id,
              'query_id'            => query_id,
              'result_id'           => result_id,
              'hide_via_bot'        => hide_via_bot)
  end
  
  # Adds a message to a quick reply shortcut.
  # If shortcut doesn't exist and there are less than getOption("quick_reply_shortcut_count_max") shortcuts, then a new
  #   shortcut is created.
  # The shortcut must not contain more than getOption("quick_reply_shortcut_message_count_max") messages after adding
  #   the new message.
  # Returns the added message.
  #
  # @param shortcut_name [TD::Types::String] Name of the target shortcut.
  # @param reply_to_message_id [Integer] Identifier of a quick reply message in the same shortcut to be replied; pass 0
  #   if none.
  # @param input_message_content [TD::Types::InputMessageContent] The content of the message to be added;
  #   inputMessagePoll, {TD::Types::InputMessageContent::Forwarded} and {TD::Types::InputMessageContent::Location} with
  #   live_period aren't supported.
  # @return [TD::Types::QuickReplyMessage]
  def add_quick_reply_shortcut_message(shortcut_name:, reply_to_message_id:, input_message_content:)
    broadcast('@type'                 => 'addQuickReplyShortcutMessage',
              'shortcut_name'         => shortcut_name,
              'reply_to_message_id'   => reply_to_message_id,
              'input_message_content' => input_message_content)
  end
  
  # Adds 2-10 messages grouped together into an album to a quick reply shortcut.
  # Currently, only audio, document, photo and video messages can be grouped into an album.
  # Documents and audio files can be only grouped in an album with messages of the same type.
  # Returns sent messages.
  #
  # @param shortcut_name [TD::Types::String] Name of the target shortcut.
  # @param reply_to_message_id [Integer] Identifier of a quick reply message in the same shortcut to be replied; pass 0
  #   if none.
  # @param input_message_contents [Array<TD::Types::InputMessageContent>] Contents of messages to be sent.
  #   At most 10 messages can be added to an album.
  #   All messages must have the same value of show_caption_above_media.
  # @return [TD::Types::QuickReplyMessages]
  def add_quick_reply_shortcut_message_album(shortcut_name:, reply_to_message_id:, input_message_contents:)
    broadcast('@type'                  => 'addQuickReplyShortcutMessageAlbum',
              'shortcut_name'          => shortcut_name,
              'reply_to_message_id'    => reply_to_message_id,
              'input_message_contents' => input_message_contents)
  end
  
  # Manually adds a new sticker to the list of recently used stickers.
  # The new sticker is added to the top of the list.
  # If the sticker was already in the list, it is removed from the list first.
  # Only stickers belonging to a sticker set or in WEBP or WEBM format can be added to this list.
  # Emoji stickers can't be added to recent stickers.
  #
  # @param is_attached [Boolean] Pass true to add the sticker to the list of stickers recently attached to photo or
  #   video files; pass false to add the sticker to the list of recently sent stickers.
  # @param sticker [TD::Types::InputFile] Sticker file to add.
  # @return [TD::Types::Stickers]
  def add_recent_sticker(is_attached:, sticker:)
    broadcast('@type'       => 'addRecentSticker',
              'is_attached' => is_attached,
              'sticker'     => sticker)
  end
  
  # Adds a chat to the list of recently found chats.
  # The chat is added to the beginning of the list.
  # If the chat is already in the list, it will be removed from the list first.
  #
  # @param chat_id [Integer] Identifier of the chat to add.
  # @return [TD::Types::Ok]
  def add_recently_found_chat(chat_id:)
    broadcast('@type'   => 'addRecentlyFoundChat',
              'chat_id' => chat_id)
  end
  
  # Manually adds a new animation to the list of saved animations.
  # The new animation is added to the beginning of the list.
  # If the animation was already in the list, it is removed first.
  # Only non-secret video animations with MIME type "video/mp4" can be added to the list.
  #
  # @param animation [TD::Types::InputFile] The animation file to be added.
  #   Only animations known to the server (i.e., successfully sent via a message) can be added to the list.
  # @return [TD::Types::Ok]
  def add_saved_animation(animation:)
    broadcast('@type'     => 'addSavedAnimation',
              'animation' => animation)
  end
  
  # Adds a new notification sound to the list of saved notification sounds.
  # The new notification sound is added to the top of the list.
  # If it is already in the list, its position isn't changed.
  #
  # @param sound [TD::Types::InputFile] Notification sound file to add.
  # @return [TD::Types::NotificationSound]
  def add_saved_notification_sound(sound:)
    broadcast('@type' => 'addSavedNotificationSound',
              'sound' => sound)
  end
  
  # Adds a new sticker to a set.
  #
  # @param user_id [Integer] Sticker set owner; ignored for regular users.
  # @param name [TD::Types::String] Sticker set name.
  #   The sticker set must be owned by the current user, and contain less than 200 stickers for custom emoji sticker
  #   sets and less than 120 otherwise.
  # @param sticker [TD::Types::InputSticker] Sticker to add to the set.
  # @return [TD::Types::Ok]
  def add_sticker_to_set(user_id:, name:, sticker:)
    broadcast('@type'   => 'addStickerToSet',
              'user_id' => user_id,
              'name'    => name,
              'sticker' => sticker)
  end
  
  # Allows the specified bot to send messages to the user.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @return [TD::Types::Ok]
  def allow_bot_to_send_messages(bot_user_id:)
    broadcast('@type'       => 'allowBotToSendMessages',
              'bot_user_id' => bot_user_id)
  end
  
  # Sets the result of a callback query; for bots only.
  #
  # @param callback_query_id [Integer] Identifier of the callback query.
  # @param text [TD::Types::String] Text of the answer.
  # @param show_alert [Boolean] Pass true to show an alert to the user instead of a toast notification.
  # @param url [TD::Types::String] URL to be opened.
  # @param cache_time [Integer] Time during which the result of the query can be cached, in seconds.
  # @return [TD::Types::Ok]
  def answer_callback_query(callback_query_id:, text:, show_alert:, url:, cache_time:)
    broadcast('@type'             => 'answerCallbackQuery',
              'callback_query_id' => callback_query_id,
              'text'              => text,
              'show_alert'        => show_alert,
              'url'               => url,
              'cache_time'        => cache_time)
  end
  
  # Answers a custom query; for bots only.
  #
  # @param custom_query_id [Integer] Identifier of a custom query.
  # @param data [TD::Types::String] JSON-serialized answer to the query.
  # @return [TD::Types::Ok]
  def answer_custom_query(custom_query_id:, data:)
    broadcast('@type'           => 'answerCustomQuery',
              'custom_query_id' => custom_query_id,
              'data'            => data)
  end
  
  # Sets the result of an inline query; for bots only.
  #
  # @param inline_query_id [Integer] Identifier of the inline query.
  # @param is_personal [Boolean] Pass true if results may be cached and returned only for the user that sent the query.
  #   By default, results may be returned to any user who sends the same query.
  # @param button [TD::Types::InlineQueryResultsButton] Button to be shown above inline query results; pass null if
  #   none.
  # @param results [Array<TD::Types::InputInlineQueryResult>] The results of the query.
  # @param cache_time [Integer] Allowed time to cache the results of the query, in seconds.
  # @param next_offset [TD::Types::String] Offset for the next inline query; pass an empty string if there are no more
  #   results.
  # @return [TD::Types::Ok]
  def answer_inline_query(inline_query_id:, is_personal:, button:, results:, cache_time:, next_offset:)
    broadcast('@type'           => 'answerInlineQuery',
              'inline_query_id' => inline_query_id,
              'is_personal'     => is_personal,
              'button'          => button,
              'results'         => results,
              'cache_time'      => cache_time,
              'next_offset'     => next_offset)
  end
  
  # Sets the result of a pre-checkout query; for bots only.
  #
  # @param pre_checkout_query_id [Integer] Identifier of the pre-checkout query.
  # @param error_message [TD::Types::String] An error message, empty on success.
  # @return [TD::Types::Ok]
  def answer_pre_checkout_query(pre_checkout_query_id:, error_message:)
    broadcast('@type'                 => 'answerPreCheckoutQuery',
              'pre_checkout_query_id' => pre_checkout_query_id,
              'error_message'         => error_message)
  end
  
  # Sets the result of a shipping query; for bots only.
  #
  # @param shipping_query_id [Integer] Identifier of the shipping query.
  # @param shipping_options [Array<TD::Types::ShippingOption>] Available shipping options.
  # @param error_message [TD::Types::String] An error message, empty on success.
  # @return [TD::Types::Ok]
  def answer_shipping_query(shipping_query_id:, shipping_options:, error_message:)
    broadcast('@type'             => 'answerShippingQuery',
              'shipping_query_id' => shipping_query_id,
              'shipping_options'  => shipping_options,
              'error_message'     => error_message)
  end
  
  # Sets the result of interaction with a Web App and sends corresponding message on behalf of the user to the chat
  #   from which the query originated; for bots only.
  #
  # @param web_app_query_id [TD::Types::String] Identifier of the Web App query.
  # @param result [TD::Types::InputInlineQueryResult] The result of the query.
  # @return [TD::Types::SentWebAppMessage]
  def answer_web_app_query(web_app_query_id:, result:)
    broadcast('@type'            => 'answerWebAppQuery',
              'web_app_query_id' => web_app_query_id,
              'result'           => result)
  end
  
  # Applies a Telegram Premium gift code.
  #
  # @param code [TD::Types::String] The code to apply.
  # @return [TD::Types::Ok]
  def apply_premium_gift_code(code:)
    broadcast('@type' => 'applyPremiumGiftCode',
              'code'  => code)
  end
  
  # Informs server about a purchase through App Store.
  # For official applications only.
  #
  # @param receipt [String] App Store receipt.
  # @param purpose [TD::Types::StorePaymentPurpose] Transaction purpose.
  # @return [TD::Types::Ok]
  def assign_app_store_transaction(receipt:, purpose:)
    broadcast('@type'   => 'assignAppStoreTransaction',
              'receipt' => receipt,
              'purpose' => purpose)
  end
  
  # Informs server about a purchase through Google Play.
  # For official applications only.
  #
  # @param package_name [TD::Types::String] Application package name.
  # @param store_product_id [TD::Types::String] Identifier of the purchased store product.
  # @param purchase_token [TD::Types::String] Google Play purchase token.
  # @param purpose [TD::Types::StorePaymentPurpose] Transaction purpose.
  # @return [TD::Types::Ok]
  def assign_google_play_transaction(package_name:, store_product_id:, purchase_token:, purpose:)
    broadcast('@type'            => 'assignGooglePlayTransaction',
              'package_name'     => package_name,
              'store_product_id' => store_product_id,
              'purchase_token'   => purchase_token,
              'purpose'          => purpose)
  end
  
  # Bans a member in a chat; requires can_restrict_members administrator right.
  # Members can't be banned in private or secret chats.
  # In supergroups and channels, the user will not be able to return to the group on their own using invite links,
  #   etc., unless unbanned first.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param member_id [TD::Types::MessageSender] Member identifier.
  # @param banned_until_date [Integer] Point in time (Unix timestamp) when the user will be unbanned; 0 if never.
  #   If the user is banned for more than 366 days or for less than 30 seconds from the current time, the user is
  #   considered to be banned forever.
  #   Ignored in basic groups and if a chat is banned.
  # @param revoke_messages [Boolean] Pass true to delete all messages in the chat for the user that is being removed.
  #   Always true for supergroups and channels.
  # @return [TD::Types::Ok]
  def ban_chat_member(chat_id:, member_id:, banned_until_date:, revoke_messages:)
    broadcast('@type'             => 'banChatMember',
              'chat_id'           => chat_id,
              'member_id'         => member_id,
              'banned_until_date' => banned_until_date,
              'revoke_messages'   => revoke_messages)
  end
  
  # Blocks an original sender of a message in the Replies chat.
  #
  # @param message_id [Integer] The identifier of an incoming message in the Replies chat.
  # @param delete_message [Boolean] Pass true to delete the message.
  # @param delete_all_messages [Boolean] Pass true to delete all messages from the same sender.
  # @param report_spam [Boolean] Pass true to report the sender to the Telegram moderators.
  # @return [TD::Types::Ok]
  def block_message_sender_from_replies(message_id:, delete_message:, delete_all_messages:, report_spam:)
    broadcast('@type'               => 'blockMessageSenderFromReplies',
              'message_id'          => message_id,
              'delete_message'      => delete_message,
              'delete_all_messages' => delete_all_messages,
              'report_spam'         => report_spam)
  end
  
  # Boosts a chat and returns the list of available chat boost slots for the current user after the boost.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param slot_ids [Array<Integer>] Identifiers of boost slots of the current user from which to apply boosts to the
  #   chat.
  # @return [TD::Types::ChatBoostSlots]
  def boost_chat(chat_id:, slot_ids:)
    broadcast('@type'    => 'boostChat',
              'chat_id'  => chat_id,
              'slot_ids' => slot_ids)
  end
  
  # Checks whether the specified bot can send messages to the user.
  # Returns a 404 error if can't and the access can be granted by call to allowBotToSendMessages.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @return [TD::Types::Ok]
  def can_bot_send_messages(bot_user_id:)
    broadcast('@type'       => 'canBotSendMessages',
              'bot_user_id' => bot_user_id)
  end
  
  # Checks whether an in-store purchase is possible.
  # Must be called before any in-store purchase.
  #
  # @param purpose [TD::Types::StorePaymentPurpose] Transaction purpose.
  # @return [TD::Types::Ok]
  def can_purchase_from_store(purpose:)
    broadcast('@type'   => 'canPurchaseFromStore',
              'purpose' => purpose)
  end
  
  # Check whether the current user can message another user or try to create a chat with them.
  #
  # @param user_id [Integer] Identifier of the other user.
  # @param only_local [Boolean] Pass true to get only locally available information without sending network requests.
  # @return [TD::Types::CanSendMessageToUserResult]
  def can_send_message_to_user(user_id:, only_local:)
    broadcast('@type'      => 'canSendMessageToUser',
              'user_id'    => user_id,
              'only_local' => only_local)
  end
  
  # Checks whether the current user can send a story on behalf of a chat; requires can_post_stories right for
  #   supergroup and channel chats.
  #
  # @param chat_id [Integer] Chat identifier.
  #   Pass Saved Messages chat identifier when posting a story on behalf of the current user.
  # @return [TD::Types::CanSendStoryResult]
  def can_send_story(chat_id:)
    broadcast('@type'   => 'canSendStory',
              'chat_id' => chat_id)
  end
  
  # Checks whether the current session can be used to transfer a chat ownership to another user.
  #
  # @return [TD::Types::CanTransferOwnershipResult]
  def can_transfer_ownership
    broadcast('@type' => 'canTransferOwnership')
  end
  
  # Stops the downloading of a file.
  # If a file has already been downloaded, does nothing.
  #
  # @param file_id [Integer] Identifier of a file to stop downloading.
  # @param only_if_pending [Boolean] Pass true to stop downloading only if it hasn't been started, i.e.
  #   request hasn't been sent to server.
  # @return [TD::Types::Ok]
  def cancel_download_file(file_id:, only_if_pending:)
    broadcast('@type'           => 'cancelDownloadFile',
              'file_id'         => file_id,
              'only_if_pending' => only_if_pending)
  end
  
  # Cancels reset of 2-step verification password.
  # The method can be called if passwordState.pending_reset_date > 0.
  #
  # @return [TD::Types::Ok]
  def cancel_password_reset
    broadcast('@type' => 'cancelPasswordReset')
  end
  
  # Stops the preliminary uploading of a file.
  # Supported only for files uploaded by using preliminaryUploadFile.
  # For other files the behavior is undefined.
  #
  # @param file_id [Integer] Identifier of the file to stop uploading.
  # @return [TD::Types::Ok]
  def cancel_preliminary_upload_file(file_id:)
    broadcast('@type'   => 'cancelPreliminaryUploadFile',
              'file_id' => file_id)
  end
  
  # Cancels verification of the 2-step verification recovery email address.
  #
  # @return [TD::Types::PasswordState]
  def cancel_recovery_email_address_verification
    broadcast('@type' => 'cancelRecoveryEmailAddressVerification')
  end
  
  # Changes imported contacts using the list of contacts saved on the device.
  # Imports newly added contacts and, if at least the file database is enabled, deletes recently deleted contacts.
  # Query result depends on the result of the previous query, so only one query is possible at the same time.
  #
  # @param contacts [Array<TD::Types::Contact>] The new list of contacts, contact's vCard are ignored and are not
  #   imported.
  # @return [TD::Types::ImportedContacts]
  def change_imported_contacts(contacts:)
    broadcast('@type'    => 'changeImportedContacts',
              'contacts' => contacts)
  end
  
  # Installs/uninstalls or activates/archives a sticker set.
  #
  # @param set_id [Integer] Identifier of the sticker set.
  # @param is_installed [Boolean] The new value of is_installed.
  # @param is_archived [Boolean] The new value of is_archived.
  #   A sticker set can't be installed and archived simultaneously.
  # @return [TD::Types::Ok]
  def change_sticker_set(set_id:, is_installed:, is_archived:)
    broadcast('@type'        => 'changeStickerSet',
              'set_id'       => set_id,
              'is_installed' => is_installed,
              'is_archived'  => is_archived)
  end
  
  # Checks the authentication token of a bot; to log in as a bot.
  # Works only when the current authorization state is authorizationStateWaitPhoneNumber.
  # Can be used instead of setAuthenticationPhoneNumber and checkAuthenticationCode to log in.
  #
  # @param token [TD::Types::String] The bot token.
  # @return [TD::Types::Ok]
  def check_authentication_bot_token(token:)
    broadcast('@type' => 'checkAuthenticationBotToken',
              'token' => token)
  end
  
  # Checks the authentication code.
  # Works only when the current authorization state is authorizationStateWaitCode.
  #
  # @param code [TD::Types::String] Authentication code to check.
  # @return [TD::Types::Ok]
  def check_authentication_code(code:)
    broadcast('@type' => 'checkAuthenticationCode',
              'code'  => code)
  end
  
  # Checks the authentication of an email address.
  # Works only when the current authorization state is authorizationStateWaitEmailCode.
  #
  # @param code [TD::Types::EmailAddressAuthentication] Email address authentication to check.
  # @return [TD::Types::Ok]
  def check_authentication_email_code(code:)
    broadcast('@type' => 'checkAuthenticationEmailCode',
              'code'  => code)
  end
  
  # Checks the 2-step verification password for correctness.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  # @param password [TD::Types::String] The 2-step verification password to check.
  # @return [TD::Types::Ok]
  def check_authentication_password(password:)
    broadcast('@type'    => 'checkAuthenticationPassword',
              'password' => password)
  end
  
  # Checks whether a 2-step verification password recovery code sent to an email address is valid.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  # @param recovery_code [TD::Types::String] Recovery code to check.
  # @return [TD::Types::Ok]
  def check_authentication_password_recovery_code(recovery_code:)
    broadcast('@type'         => 'checkAuthenticationPasswordRecoveryCode',
              'recovery_code' => recovery_code)
  end
  
  # Checks the validity of an invite link for a chat folder and returns information about the corresponding chat
  #   folder.
  #
  # @param invite_link [TD::Types::String] Invite link to be checked.
  # @return [TD::Types::ChatFolderInviteLinkInfo]
  def check_chat_folder_invite_link(invite_link:)
    broadcast('@type'       => 'checkChatFolderInviteLink',
              'invite_link' => invite_link)
  end
  
  # Checks the validity of an invite link for a chat and returns information about the corresponding chat.
  #
  # @param invite_link [TD::Types::String] Invite link to be checked.
  # @return [TD::Types::ChatInviteLinkInfo]
  def check_chat_invite_link(invite_link:)
    broadcast('@type'       => 'checkChatInviteLink',
              'invite_link' => invite_link)
  end
  
  # Checks whether a username can be set for a chat.
  #
  # @param chat_id [Integer] Chat identifier; must be identifier of a supergroup chat, or a channel chat, or a private
  #   chat with self, or 0 if the chat is being created.
  # @param username [TD::Types::String] Username to be checked.
  # @return [TD::Types::CheckChatUsernameResult]
  def check_chat_username(chat_id:, username:)
    broadcast('@type'    => 'checkChatUsername',
              'chat_id'  => chat_id,
              'username' => username)
  end
  
  # Checks whether the maximum number of owned public chats has been reached.
  # Returns corresponding error if the limit was reached.
  # The limit can be increased with Telegram Premium.
  #
  # @param type [TD::Types::PublicChatType] Type of the public chats, for which to check the limit.
  # @return [TD::Types::Ok]
  def check_created_public_chats_limit(type:)
    broadcast('@type' => 'checkCreatedPublicChatsLimit',
              'type'  => type)
  end
  
  # Checks the email address verification code for Telegram Passport.
  #
  # @param code [TD::Types::String] Verification code to check.
  # @return [TD::Types::Ok]
  def check_email_address_verification_code(code:)
    broadcast('@type' => 'checkEmailAddressVerificationCode',
              'code'  => code)
  end
  
  # Checks the login email address authentication.
  #
  # @param code [TD::Types::EmailAddressAuthentication] Email address authentication to check.
  # @return [TD::Types::Ok]
  def check_login_email_address_code(code:)
    broadcast('@type' => 'checkLoginEmailAddressCode',
              'code'  => code)
  end
  
  # Checks whether a 2-step verification password recovery code sent to an email address is valid.
  #
  # @param recovery_code [TD::Types::String] Recovery code to check.
  # @return [TD::Types::Ok]
  def check_password_recovery_code(recovery_code:)
    broadcast('@type'         => 'checkPasswordRecoveryCode',
              'recovery_code' => recovery_code)
  end
  
  # Check the authentication code and completes the request for which the code was sent if appropriate.
  #
  # @param code [TD::Types::String] Authentication code to check.
  # @return [TD::Types::Ok]
  def check_phone_number_code(code:)
    broadcast('@type' => 'checkPhoneNumberCode',
              'code'  => code)
  end
  
  # Return information about a Telegram Premium gift code.
  #
  # @param code [TD::Types::String] The code to check.
  # @return [TD::Types::PremiumGiftCodeInfo]
  def check_premium_gift_code(code:)
    broadcast('@type' => 'checkPremiumGiftCode',
              'code'  => code)
  end
  
  # Checks validness of a name for a quick reply shortcut.
  # Can be called synchronously.
  #
  # @param name [TD::Types::String] The name of the shortcut; 1-32 characters.
  # @return [TD::Types::Ok]
  def check_quick_reply_shortcut_name(name:)
    broadcast('@type' => 'checkQuickReplyShortcutName',
              'name'  => name)
  end
  
  # Checks the 2-step verification recovery email address verification code.
  #
  # @param code [TD::Types::String] Verification code to check.
  # @return [TD::Types::PasswordState]
  def check_recovery_email_address_code(code:)
    broadcast('@type' => 'checkRecoveryEmailAddressCode',
              'code'  => code)
  end
  
  # Checks whether a name can be used for a new sticker set.
  #
  # @param name [TD::Types::String] Name to be checked.
  # @return [TD::Types::CheckStickerSetNameResult]
  def check_sticker_set_name(name:)
    broadcast('@type' => 'checkStickerSetName',
              'name'  => name)
  end
  
  # Removes potentially dangerous characters from the name of a file.
  # The encoding of the file name is supposed to be UTF-8.
  # Returns an empty string on failure.
  # Can be called synchronously.
  #
  # @param file_name [TD::Types::String] File name or path to the file.
  # @return [TD::Types::Text]
  def clean_file_name(file_name:)
    broadcast('@type'     => 'cleanFileName',
              'file_name' => file_name)
  end
  
  # Clears message drafts in all chats.
  #
  # @param exclude_secret_chats [Boolean] Pass true to keep local message drafts in secret chats.
  # @return [TD::Types::Ok]
  def clear_all_draft_messages(exclude_secret_chats:)
    broadcast('@type'                => 'clearAllDraftMessages',
              'exclude_secret_chats' => exclude_secret_chats)
  end
  
  # Clears the list of all autosave settings exceptions.
  # The method is guaranteed to work only after at least one call to getAutosaveSettings.
  #
  # @return [TD::Types::Ok]
  def clear_autosave_settings_exceptions
    broadcast('@type' => 'clearAutosaveSettingsExceptions')
  end
  
  # Clears all imported contacts, contact list remains unchanged.
  #
  # @return [TD::Types::Ok]
  def clear_imported_contacts
    broadcast('@type' => 'clearImportedContacts')
  end
  
  # Clears the list of recently used emoji statuses for self status.
  #
  # @return [TD::Types::Ok]
  def clear_recent_emoji_statuses
    broadcast('@type' => 'clearRecentEmojiStatuses')
  end
  
  # Clears the list of recently used reactions.
  #
  # @return [TD::Types::Ok]
  def clear_recent_reactions
    broadcast('@type' => 'clearRecentReactions')
  end
  
  # Clears the list of recently used stickers.
  #
  # @param is_attached [Boolean] Pass true to clear the list of stickers recently attached to photo or video files;
  #   pass false to clear the list of recently sent stickers.
  # @return [TD::Types::Ok]
  def clear_recent_stickers(is_attached:)
    broadcast('@type'       => 'clearRecentStickers',
              'is_attached' => is_attached)
  end
  
  # Clears the list of recently found chats.
  #
  # @return [TD::Types::Ok]
  def clear_recently_found_chats
    broadcast('@type' => 'clearRecentlyFoundChats')
  end
  
  # Clears the list of recently searched for hashtags or cashtags.
  #
  # @param clear_cashtags [Boolean] Pass true to clear the list of recently searched for cashtags; otherwise, the list
  #   of recently searched for hashtags will be cleared.
  # @return [TD::Types::Ok]
  def clear_searched_for_tags(clear_cashtags:)
    broadcast('@type'          => 'clearSearchedForTags',
              'clear_cashtags' => clear_cashtags)
  end
  
  # Informs TDLib that a message with an animated emoji was clicked by the user.
  # Returns a big animated sticker to be played or a 404 error if usual animation needs to be played.
  #
  # @param chat_id [Integer] Chat identifier of the message.
  # @param message_id [Integer] Identifier of the clicked message.
  # @return [TD::Types::Sticker]
  def click_animated_emoji_message(chat_id:, message_id:)
    broadcast('@type'      => 'clickAnimatedEmojiMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Informs TDLib that the user opened the sponsored chat via the button, the name, the photo, or a mention in the
  #   sponsored message.
  #
  # @param chat_id [Integer] Chat identifier of the sponsored message.
  # @param message_id [Integer] Identifier of the sponsored message.
  # @return [TD::Types::Ok]
  def click_chat_sponsored_message(chat_id:, message_id:)
    broadcast('@type'      => 'clickChatSponsoredMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Informs TDLib that the user clicked Premium subscription button on the Premium features screen.
  #
  # @return [TD::Types::Ok]
  def click_premium_subscription_button
    broadcast('@type' => 'clickPremiumSubscriptionButton')
  end
  
  # Closes the TDLib instance.
  # All databases will be flushed to disk and properly closed.
  # After the close completes, updateAuthorizationState with authorizationStateClosed will be sent.
  # Can be called before initialization.
  #
  # @return [TD::Types::Ok]
  def close
    broadcast('@type' => 'close')
  end
  
  # Informs TDLib that the chat is closed by the user.
  # Many useful activities depend on the chat being opened or closed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def close_chat(chat_id:)
    broadcast('@type'   => 'closeChat',
              'chat_id' => chat_id)
  end
  
  # Closes a secret chat, effectively transferring its state to secretChatStateClosed.
  #
  # @param secret_chat_id [Integer] Secret chat identifier.
  # @return [TD::Types::Ok]
  def close_secret_chat(secret_chat_id:)
    broadcast('@type'          => 'closeSecretChat',
              'secret_chat_id' => secret_chat_id)
  end
  
  # Informs TDLib that a story is closed by the user.
  #
  # @param story_sender_chat_id [Integer] The identifier of the sender of the story to close.
  # @param story_id [Integer] The identifier of the story.
  # @return [TD::Types::Ok]
  def close_story(story_sender_chat_id:, story_id:)
    broadcast('@type'                => 'closeStory',
              'story_sender_chat_id' => story_sender_chat_id,
              'story_id'             => story_id)
  end
  
  # Informs TDLib that a previously opened Web App was closed.
  #
  # @param web_app_launch_id [Integer] Identifier of Web App launch, received from openWebApp.
  # @return [TD::Types::Ok]
  def close_web_app(web_app_launch_id:)
    broadcast('@type'             => 'closeWebApp',
              'web_app_launch_id' => web_app_launch_id)
  end
  
  # Confirms QR code authentication on another device.
  # Returns created session on success.
  #
  # @param link [TD::Types::String] A link from a QR code.
  #   The link must be scanned by the in-app camera.
  # @return [TD::Types::Session]
  def confirm_qr_code_authentication(link:)
    broadcast('@type' => 'confirmQrCodeAuthentication',
              'link'  => link)
  end
  
  # Confirms an unconfirmed session of the current user from another device.
  #
  # @param session_id [Integer] Session identifier.
  # @return [TD::Types::Ok]
  def confirm_session(session_id:)
    broadcast('@type'      => 'confirmSession',
              'session_id' => session_id)
  end
  
  # Returns an existing chat corresponding to a known basic group.
  #
  # @param basic_group_id [Integer] Basic group identifier.
  # @param force [Boolean] Pass true to create the chat without a network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  # @return [TD::Types::Chat]
  def create_basic_group_chat(basic_group_id:, force:)
    broadcast('@type'          => 'createBasicGroupChat',
              'basic_group_id' => basic_group_id,
              'force'          => force)
  end
  
  # Creates a business chat link for the current account.
  # Requires Telegram Business subscription.
  # There can be up to getOption("business_chat_link_count_max") links created.
  # Returns the created link.
  #
  # @param link_info [TD::Types::InputBusinessChatLink] Information about the link to create.
  # @return [TD::Types::BusinessChatLink]
  def create_business_chat_link(link_info:)
    broadcast('@type'     => 'createBusinessChatLink',
              'link_info' => link_info)
  end
  
  # Creates a new call.
  #
  # @param user_id [Integer] Identifier of the user to be called.
  # @param protocol [TD::Types::CallProtocol] The call protocols supported by the application.
  # @param is_video [Boolean] Pass true to create a video call.
  # @return [TD::Types::CallId]
  def create_call(user_id:, protocol:, is_video:)
    broadcast('@type'    => 'createCall',
              'user_id'  => user_id,
              'protocol' => protocol,
              'is_video' => is_video)
  end
  
  # Creates new chat folder.
  # Returns information about the created chat folder.
  # There can be up to getOption("chat_folder_count_max") chat folders, but the limit can be increased with Telegram
  #   Premium.
  #
  # @param folder [TD::Types::ChatFolder] The new chat folder.
  # @return [TD::Types::ChatFolderInfo]
  def create_chat_folder(folder:)
    broadcast('@type'  => 'createChatFolder',
              'folder' => folder)
  end
  
  # Creates a new invite link for a chat folder.
  # A link can be created for a chat folder if it has only pinned and included chats.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @param name [TD::Types::String] Name of the link; 0-32 characters.
  # @param chat_ids [Array<Integer>] Identifiers of chats to be accessible by the invite link.
  #   Use getChatsForChatFolderInviteLink to get suitable chats.
  #   Basic groups will be automatically converted to supergroups before link creation.
  # @return [TD::Types::ChatFolderInviteLink]
  def create_chat_folder_invite_link(chat_folder_id:, name:, chat_ids:)
    broadcast('@type'          => 'createChatFolderInviteLink',
              'chat_folder_id' => chat_folder_id,
              'name'           => name,
              'chat_ids'       => chat_ids)
  end
  
  # Creates a new invite link for a chat.
  # Available for basic groups, supergroups, and channels.
  # Requires administrator privileges and can_invite_users right in the chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param name [TD::Types::String] Invite link name; 0-32 characters.
  # @param expiration_date [Integer] Point in time (Unix timestamp) when the link will expire; pass 0 if never.
  # @param member_limit [Integer] The maximum number of chat members that can join the chat via the link
  #   simultaneously; 0-99999; pass 0 if not limited.
  # @param creates_join_request [Boolean] Pass true if users joining the chat via the link need to be approved by chat
  #   administrators.
  #   In this case, member_limit must be 0.
  # @return [TD::Types::ChatInviteLink]
  def create_chat_invite_link(chat_id:, name:, expiration_date:, member_limit:, creates_join_request:)
    broadcast('@type'                => 'createChatInviteLink',
              'chat_id'              => chat_id,
              'name'                 => name,
              'expiration_date'      => expiration_date,
              'member_limit'         => member_limit,
              'creates_join_request' => creates_join_request)
  end
  
  # Creates a new subscription invite link for a channel chat.
  # Requires can_invite_users right in the chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param name [TD::Types::String] Invite link name; 0-32 characters.
  # @param subscription_pricing [TD::Types::StarSubscriptionPricing] Information about subscription plan that will be
  #   applied to the users joining the chat via the link.
  #   Subscription period must be 2592000 in production environment, and 60 or 300 if Telegram test environment is
  #   used.
  # @return [TD::Types::ChatInviteLink]
  def create_chat_subscription_invite_link(chat_id:, name:, subscription_pricing:)
    broadcast('@type'                => 'createChatSubscriptionInviteLink',
              'chat_id'              => chat_id,
              'name'                 => name,
              'subscription_pricing' => subscription_pricing)
  end
  
  # Creates a topic in a forum supergroup chat; requires can_manage_topics administrator or can_create_topics member
  #   right in the supergroup.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param name [TD::Types::String] Name of the topic; 1-128 characters.
  # @param icon [TD::Types::ForumTopicIcon] Icon of the topic.
  #   Icon color must be one of 0x6FB9F0, 0xFFD67E, 0xCB86DB, 0x8EEE98, 0xFF93B2, or 0xFB6F5F.
  #   Telegram Premium users can use any custom emoji as topic icon, other users can use only a custom emoji returned
  #   by getForumTopicDefaultIcons.
  # @return [TD::Types::ForumTopicInfo]
  def create_forum_topic(chat_id:, name:, icon:)
    broadcast('@type'   => 'createForumTopic',
              'chat_id' => chat_id,
              'name'    => name,
              'icon'    => icon)
  end
  
  # Creates a link for the given invoice; for bots only.
  #
  # @param invoice [TD::Types::InputMessageContent] Information about the invoice of the type inputMessageInvoice.
  # @return [TD::Types::HttpUrl]
  def create_invoice_link(invoice:)
    broadcast('@type'   => 'createInvoiceLink',
              'invoice' => invoice)
  end
  
  # Creates a new basic group and sends a corresponding messageBasicGroupChatCreate.
  # Returns information about the newly created chat.
  #
  # @param user_ids [Array<Integer>, nil] Identifiers of users to be added to the basic group; may be empty to create a
  #   basic group without other members.
  # @param title [TD::Types::String] Title of the new basic group; 1-128 characters.
  # @param message_auto_delete_time [Integer] Message auto-delete time value, in seconds; must be from 0 up to 365 *
  #   86400 and be divisible by 86400.
  #   If 0, then messages aren't deleted automatically.
  # @return [TD::Types::CreatedBasicGroupChat]
  def create_new_basic_group_chat(user_ids: nil, title:, message_auto_delete_time:)
    broadcast('@type'                    => 'createNewBasicGroupChat',
              'user_ids'                 => user_ids,
              'title'                    => title,
              'message_auto_delete_time' => message_auto_delete_time)
  end
  
  # Creates a new secret chat.
  # Returns the newly created chat.
  #
  # @param user_id [Integer] Identifier of the target user.
  # @return [TD::Types::Chat]
  def create_new_secret_chat(user_id:)
    broadcast('@type'   => 'createNewSecretChat',
              'user_id' => user_id)
  end
  
  # Creates a new sticker set.
  # Returns the newly created sticker set.
  #
  # @param user_id [Integer] Sticker set owner; ignored for regular users.
  # @param title [TD::Types::String] Sticker set title; 1-64 characters.
  # @param name [TD::Types::String, nil] Sticker set name.
  #   Can contain only English letters, digits and underscores.
  #   Must end with *"_by_<bot username>"* (*<bot_username>* is case insensitive) for bots; 0-64 characters.
  #   If empty, then the name returned by getSuggestedStickerSetName will be used automatically.
  # @param sticker_type [TD::Types::StickerType] Type of the stickers in the set.
  # @param needs_repainting [Boolean] Pass true if stickers in the sticker set must be repainted; for custom emoji
  #   sticker sets only.
  # @param stickers [Array<TD::Types::InputSticker>] List of stickers to be added to the set; 1-200 stickers for custom
  #   emoji sticker sets, and 1-120 stickers otherwise.
  #   For TGS stickers, uploadStickerFile must be used before the sticker is shown.
  # @param source [TD::Types::String, nil] Source of the sticker set; may be empty if unknown.
  # @return [TD::Types::StickerSet]
  def create_new_sticker_set(user_id:, title:, name: nil, sticker_type:, needs_repainting:, stickers:, source: nil)
    broadcast('@type'            => 'createNewStickerSet',
              'user_id'          => user_id,
              'title'            => title,
              'name'             => name,
              'sticker_type'     => sticker_type,
              'needs_repainting' => needs_repainting,
              'stickers'         => stickers,
              'source'           => source)
  end
  
  # Creates a new supergroup or channel and sends a corresponding messageSupergroupChatCreate.
  # Returns the newly created chat.
  #
  # @param title [TD::Types::String] Title of the new chat; 1-128 characters.
  # @param is_forum [Boolean] Pass true to create a forum supergroup chat.
  # @param is_channel [Boolean] Pass true to create a channel chat; ignored if a forum is created.
  # @param description [TD::Types::String] Chat description; 0-255 characters.
  # @param location [TD::Types::ChatLocation] Chat location if a location-based supergroup is being created; pass null
  #   to create an ordinary supergroup chat.
  # @param message_auto_delete_time [Integer] Message auto-delete time value, in seconds; must be from 0 up to 365 *
  #   86400 and be divisible by 86400.
  #   If 0, then messages aren't deleted automatically.
  # @param for_import [Boolean] Pass true to create a supergroup for importing messages using importMessages.
  # @return [TD::Types::Chat]
  def create_new_supergroup_chat(title:, is_forum:, is_channel:, description:, location:, message_auto_delete_time:,
                                 for_import:)
    broadcast('@type'                    => 'createNewSupergroupChat',
              'title'                    => title,
              'is_forum'                 => is_forum,
              'is_channel'               => is_channel,
              'description'              => description,
              'location'                 => location,
              'message_auto_delete_time' => message_auto_delete_time,
              'for_import'               => for_import)
  end
  
  # Returns an existing chat corresponding to a given user.
  #
  # @param user_id [Integer] User identifier.
  # @param force [Boolean] Pass true to create the chat without a network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  # @return [TD::Types::Chat]
  def create_private_chat(user_id:, force:)
    broadcast('@type'   => 'createPrivateChat',
              'user_id' => user_id,
              'force'   => force)
  end
  
  # Returns an existing chat corresponding to a known secret chat.
  #
  # @param secret_chat_id [Integer] Secret chat identifier.
  # @return [TD::Types::Chat]
  def create_secret_chat(secret_chat_id:)
    broadcast('@type'          => 'createSecretChat',
              'secret_chat_id' => secret_chat_id)
  end
  
  # Returns an existing chat corresponding to a known supergroup or channel.
  #
  # @param supergroup_id [Integer] Supergroup or channel identifier.
  # @param force [Boolean] Pass true to create the chat without a network request.
  #   In this case all information about the chat except its type, title and photo can be incorrect.
  # @return [TD::Types::Chat]
  def create_supergroup_chat(supergroup_id:, force:)
    broadcast('@type'         => 'createSupergroupChat',
              'supergroup_id' => supergroup_id,
              'force'         => force)
  end
  
  # Creates a new temporary password for processing payments.
  #
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @param valid_for [Integer] Time during which the temporary password will be valid, in seconds; must be between 60
  #   and 86400.
  # @return [TD::Types::TemporaryPasswordState]
  def create_temporary_password(password:, valid_for:)
    broadcast('@type'     => 'createTemporaryPassword',
              'password'  => password,
              'valid_for' => valid_for)
  end
  
  # Creates a video chat (a group call bound to a chat).
  # Available only for basic groups, supergroups and channels; requires can_manage_video_chats administrator right.
  #
  # @param chat_id [Integer] Identifier of a chat in which the video chat will be created.
  # @param title [TD::Types::String, nil] Group call title; if empty, chat title will be used.
  # @param start_date [Integer] Point in time (Unix timestamp) when the group call is supposed to be started by an
  #   administrator; 0 to start the video chat immediately.
  #   The date must be at least 10 seconds and at most 8 days in the future.
  # @param is_rtmp_stream [Boolean] Pass true to create an RTMP stream instead of an ordinary video chat; requires
  #   owner privileges.
  # @return [TD::Types::GroupCallId]
  def create_video_chat(chat_id:, title: nil, start_date:, is_rtmp_stream:)
    broadcast('@type'          => 'createVideoChat',
              'chat_id'        => chat_id,
              'title'          => title,
              'start_date'     => start_date,
              'is_rtmp_stream' => is_rtmp_stream)
  end
  
  # Deletes the account of the current user, deleting all information associated with the user from the server.
  # The phone number of the account can be used to create a new account.
  # Can be called before authorization when the current authorization state is authorizationStateWaitPassword.
  #
  # @param reason [TD::Types::String, nil] The reason why the account was deleted; optional.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  #   If the current user isn't authorized, then an empty string can be passed and account deletion can be canceled
  #   within one week.
  # @return [TD::Types::Ok]
  def delete_account(reason: nil, password:)
    broadcast('@type'    => 'deleteAccount',
              'reason'   => reason,
              'password' => password)
  end
  
  # Deletes all call messages.
  #
  # @param revoke [Boolean] Pass true to delete the messages for all users.
  # @return [TD::Types::Ok]
  def delete_all_call_messages(revoke:)
    broadcast('@type'  => 'deleteAllCallMessages',
              'revoke' => revoke)
  end
  
  # Deletes all revoked chat invite links created by a given chat administrator.
  # Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param creator_user_id [Integer] User identifier of a chat administrator, which links will be deleted.
  #   Must be an identifier of the current user for non-owner.
  # @return [TD::Types::Ok]
  def delete_all_revoked_chat_invite_links(chat_id:, creator_user_id:)
    broadcast('@type'           => 'deleteAllRevokedChatInviteLinks',
              'chat_id'         => chat_id,
              'creator_user_id' => creator_user_id)
  end
  
  # Delete media previews from the list of media previews of a bot.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  #   The bot must be owned and must have the main Web App.
  # @param language_code [TD::Types::String] Language code of the media previews to delete.
  # @param file_ids [Array<Integer>] File identifiers of the media to delete.
  # @return [TD::Types::Ok]
  def delete_bot_media_previews(bot_user_id:, language_code:, file_ids:)
    broadcast('@type'         => 'deleteBotMediaPreviews',
              'bot_user_id'   => bot_user_id,
              'language_code' => language_code,
              'file_ids'      => file_ids)
  end
  
  # Deletes a business chat link of the current account.
  #
  # @param link [TD::Types::String] The link to delete.
  # @return [TD::Types::Ok]
  def delete_business_chat_link(link:)
    broadcast('@type' => 'deleteBusinessChatLink',
              'link'  => link)
  end
  
  # Deletes the business bot that is connected to the current user account.
  #
  # @param bot_user_id [Integer] Unique user identifier for the bot.
  # @return [TD::Types::Ok]
  def delete_business_connected_bot(bot_user_id:)
    broadcast('@type'       => 'deleteBusinessConnectedBot',
              'bot_user_id' => bot_user_id)
  end
  
  # Deletes a chat along with all messages in the corresponding chat for all chat members.
  # For group chats this will release the usernames and remove all members.
  # Use the field chat.can_be_deleted_for_all_users to find whether the method can be applied to the chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def delete_chat(chat_id:)
    broadcast('@type'   => 'deleteChat',
              'chat_id' => chat_id)
  end
  
  # Deletes background in a specific chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param restore_previous [Boolean] Pass true to restore previously set background.
  #   Can be used only in private and secret chats with non-deleted users if userFullInfo.set_chat_background == true.
  #   Supposed to be used from {TD::Types::MessageContent::ChatSetBackground} messages with the currently set
  #   background that was set for both sides by the other user.
  # @return [TD::Types::Ok]
  def delete_chat_background(chat_id:, restore_previous:)
    broadcast('@type'            => 'deleteChatBackground',
              'chat_id'          => chat_id,
              'restore_previous' => restore_previous)
  end
  
  # Deletes existing chat folder.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @param leave_chat_ids [Array<Integer>] Identifiers of the chats to leave.
  #   The chats must be pinned or always included in the folder.
  # @return [TD::Types::Ok]
  def delete_chat_folder(chat_folder_id:, leave_chat_ids:)
    broadcast('@type'          => 'deleteChatFolder',
              'chat_folder_id' => chat_folder_id,
              'leave_chat_ids' => leave_chat_ids)
  end
  
  # Deletes an invite link for a chat folder.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @param invite_link [TD::Types::String] Invite link to be deleted.
  # @return [TD::Types::Ok]
  def delete_chat_folder_invite_link(chat_folder_id:, invite_link:)
    broadcast('@type'          => 'deleteChatFolderInviteLink',
              'chat_folder_id' => chat_folder_id,
              'invite_link'    => invite_link)
  end
  
  # Deletes all messages in the chat.
  # Use chat.can_be_deleted_only_for_self and chat.can_be_deleted_for_all_users fields to find whether and how the
  #   method can be applied to the chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param remove_from_chat_list [Boolean] Pass true to remove the chat from all chat lists.
  # @param revoke [Boolean] Pass true to delete chat history for all users.
  # @return [TD::Types::Ok]
  def delete_chat_history(chat_id:, remove_from_chat_list:, revoke:)
    broadcast('@type'                 => 'deleteChatHistory',
              'chat_id'               => chat_id,
              'remove_from_chat_list' => remove_from_chat_list,
              'revoke'                => revoke)
  end
  
  # Deletes all messages between the specified dates in a chat.
  # Supported only for private chats and basic groups.
  # Messages sent in the last 30 seconds will not be deleted.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param min_date [Integer] The minimum date of the messages to delete.
  # @param max_date [Integer] The maximum date of the messages to delete.
  # @param revoke [Boolean] Pass true to delete chat messages for all users; private chats only.
  # @return [TD::Types::Ok]
  def delete_chat_messages_by_date(chat_id:, min_date:, max_date:, revoke:)
    broadcast('@type'    => 'deleteChatMessagesByDate',
              'chat_id'  => chat_id,
              'min_date' => min_date,
              'max_date' => max_date,
              'revoke'   => revoke)
  end
  
  # Deletes all messages sent by the specified message sender in a chat.
  # Supported only for supergroups; requires can_delete_messages administrator privileges.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param sender_id [TD::Types::MessageSender] Identifier of the sender of messages to delete.
  # @return [TD::Types::Ok]
  def delete_chat_messages_by_sender(chat_id:, sender_id:)
    broadcast('@type'     => 'deleteChatMessagesBySender',
              'chat_id'   => chat_id,
              'sender_id' => sender_id)
  end
  
  # Deletes the default reply markup from a chat.
  # Must be called after a one-time keyboard or a replyMarkupForceReply reply markup has been used.
  # An updateChatReplyMarkup update will be sent if the reply markup is changed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] The message identifier of the used keyboard.
  # @return [TD::Types::Ok]
  def delete_chat_reply_markup(chat_id:, message_id:)
    broadcast('@type'      => 'deleteChatReplyMarkup',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Deletes commands supported by the bot for the given user scope and language; for bots only.
  #
  # @param scope [TD::Types::BotCommandScope] The scope to which the commands are relevant; pass null to delete
  #   commands in the default bot command scope.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code or an empty string.
  # @return [TD::Types::Ok]
  def delete_commands(scope:, language_code:)
    broadcast('@type'         => 'deleteCommands',
              'scope'         => scope,
              'language_code' => language_code)
  end
  
  # Deletes default background for chats.
  #
  # @param for_dark_theme [Boolean] Pass true if the background is deleted for a dark theme.
  # @return [TD::Types::Ok]
  def delete_default_background(for_dark_theme:)
    broadcast('@type'          => 'deleteDefaultBackground',
              'for_dark_theme' => for_dark_theme)
  end
  
  # Deletes a file from the TDLib file cache.
  #
  # @param file_id [Integer] Identifier of the file to delete.
  # @return [TD::Types::Ok]
  def delete_file(file_id:)
    broadcast('@type'   => 'deleteFile',
              'file_id' => file_id)
  end
  
  # Deletes all messages in a forum topic; requires can_delete_messages administrator right in the supergroup unless
  #   the user is creator of the topic, the topic has no messages from other users and has at most 11 messages.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @return [TD::Types::Ok]
  def delete_forum_topic(chat_id:, message_thread_id:)
    broadcast('@type'             => 'deleteForumTopic',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Deletes all information about a language pack in the current localization target.
  # The language pack which is currently in use (including base language pack) or is being synchronized can't be
  #   deleted.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Identifier of the language pack to delete.
  # @return [TD::Types::Ok]
  def delete_language_pack(language_pack_id:)
    broadcast('@type'            => 'deleteLanguagePack',
              'language_pack_id' => language_pack_id)
  end
  
  # Deletes messages.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_ids [Array<Integer>] Identifiers of the messages to be deleted.
  #   Use messageProperties.can_be_deleted_only_for_self and messageProperties.can_be_deleted_for_all_users to get
  #   suitable messages.
  # @param revoke [Boolean] Pass true to delete messages for all chat members.
  #   Always true for supergroups, channels and secret chats.
  # @return [TD::Types::Ok]
  def delete_messages(chat_id:, message_ids:, revoke:)
    broadcast('@type'       => 'deleteMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids,
              'revoke'      => revoke)
  end
  
  # Deletes a Telegram Passport element.
  #
  # @param type [TD::Types::PassportElementType] Element type.
  # @return [TD::Types::Ok]
  def delete_passport_element(type:)
    broadcast('@type' => 'deletePassportElement',
              'type'  => type)
  end
  
  # Deletes a profile photo.
  #
  # @param profile_photo_id [Integer] Identifier of the profile photo to delete.
  # @return [TD::Types::Ok]
  def delete_profile_photo(profile_photo_id:)
    broadcast('@type'            => 'deleteProfilePhoto',
              'profile_photo_id' => profile_photo_id)
  end
  
  # Deletes a quick reply shortcut.
  #
  # @param shortcut_id [Integer] Unique identifier of the quick reply shortcut.
  # @return [TD::Types::Ok]
  def delete_quick_reply_shortcut(shortcut_id:)
    broadcast('@type'       => 'deleteQuickReplyShortcut',
              'shortcut_id' => shortcut_id)
  end
  
  # Deletes specified quick reply messages.
  #
  # @param shortcut_id [Integer] Unique identifier of the quick reply shortcut to which the messages belong.
  # @param message_ids [Array<Integer>] Unique identifiers of the messages.
  # @return [TD::Types::Ok]
  def delete_quick_reply_shortcut_messages(shortcut_id:, message_ids:)
    broadcast('@type'       => 'deleteQuickReplyShortcutMessages',
              'shortcut_id' => shortcut_id,
              'message_ids' => message_ids)
  end
  
  # Deletes revoked chat invite links.
  # Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link to revoke.
  # @return [TD::Types::Ok]
  def delete_revoked_chat_invite_link(chat_id:, invite_link:)
    broadcast('@type'       => 'deleteRevokedChatInviteLink',
              'chat_id'     => chat_id,
              'invite_link' => invite_link)
  end
  
  # Deletes saved credentials for all payment provider bots.
  #
  # @return [TD::Types::Ok]
  def delete_saved_credentials
    broadcast('@type' => 'deleteSavedCredentials')
  end
  
  # Deletes all messages in a Saved Messages topic.
  #
  # @param saved_messages_topic_id [Integer] Identifier of Saved Messages topic which messages will be deleted.
  # @return [TD::Types::Ok]
  def delete_saved_messages_topic_history(saved_messages_topic_id:)
    broadcast('@type'                   => 'deleteSavedMessagesTopicHistory',
              'saved_messages_topic_id' => saved_messages_topic_id)
  end
  
  # Deletes all messages between the specified dates in a Saved Messages topic.
  # Messages sent in the last 30 seconds will not be deleted.
  #
  # @param saved_messages_topic_id [Integer] Identifier of Saved Messages topic which messages will be deleted.
  # @param min_date [Integer] The minimum date of the messages to delete.
  # @param max_date [Integer] The maximum date of the messages to delete.
  # @return [TD::Types::Ok]
  def delete_saved_messages_topic_messages_by_date(saved_messages_topic_id:, min_date:, max_date:)
    broadcast('@type'                   => 'deleteSavedMessagesTopicMessagesByDate',
              'saved_messages_topic_id' => saved_messages_topic_id,
              'min_date'                => min_date,
              'max_date'                => max_date)
  end
  
  # Deletes saved order information.
  #
  # @return [TD::Types::Ok]
  def delete_saved_order_info
    broadcast('@type' => 'deleteSavedOrderInfo')
  end
  
  # Completely deletes a sticker set.
  #
  # @param name [TD::Types::String] Sticker set name.
  #   The sticker set must be owned by the current user.
  # @return [TD::Types::Ok]
  def delete_sticker_set(name:)
    broadcast('@type' => 'deleteStickerSet',
              'name'  => name)
  end
  
  # Deletes a previously sent story.
  # Can be called only if story.can_be_deleted == true.
  #
  # @param story_sender_chat_id [Integer] Identifier of the chat that posted the story.
  # @param story_id [Integer] Identifier of the story to delete.
  # @return [TD::Types::Ok]
  def delete_story(story_sender_chat_id:, story_id:)
    broadcast('@type'                => 'deleteStory',
              'story_sender_chat_id' => story_sender_chat_id,
              'story_id'             => story_id)
  end
  
  # Closes the TDLib instance, destroying all local data without a proper logout.
  # The current user session will remain in the list of all active sessions.
  # All local data will be destroyed.
  # After the destruction completes updateAuthorizationState with authorizationStateClosed will be sent.
  # Can be called before authorization.
  #
  # @return [TD::Types::Ok]
  def destroy
    broadcast('@type' => 'destroy')
  end
  
  # Disables all active non-editable usernames of a supergroup or channel, requires owner privileges in the supergroup
  #   or channel.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @return [TD::Types::Ok]
  def disable_all_supergroup_usernames(supergroup_id:)
    broadcast('@type'         => 'disableAllSupergroupUsernames',
              'supergroup_id' => supergroup_id)
  end
  
  # Disables the currently enabled proxy.
  # Can be called before authorization.
  #
  # @return [TD::Types::Ok]
  def disable_proxy
    broadcast('@type' => 'disableProxy')
  end
  
  # Discards a call.
  #
  # @param call_id [Integer] Call identifier.
  # @param is_disconnected [Boolean] Pass true if the user was disconnected.
  # @param duration [Integer] The call duration, in seconds.
  # @param is_video [Boolean] Pass true if the call was a video call.
  # @param connection_id [Integer] Identifier of the connection used during the call.
  # @return [TD::Types::Ok]
  def discard_call(call_id:, is_disconnected:, duration:, is_video:, connection_id:)
    broadcast('@type'           => 'discardCall',
              'call_id'         => call_id,
              'is_disconnected' => is_disconnected,
              'duration'        => duration,
              'is_video'        => is_video,
              'connection_id'   => connection_id)
  end
  
  # Disconnects all websites from the current user's Telegram account.
  #
  # @return [TD::Types::Ok]
  def disconnect_all_websites
    broadcast('@type' => 'disconnectAllWebsites')
  end
  
  # Disconnects website from the current user's Telegram account.
  #
  # @param website_id [Integer] Website identifier.
  # @return [TD::Types::Ok]
  def disconnect_website(website_id:)
    broadcast('@type'      => 'disconnectWebsite',
              'website_id' => website_id)
  end
  
  # Downloads a file from the cloud.
  # Download progress and completion of the download will be notified through updateFile updates.
  #
  # @param file_id [Integer] Identifier of the file to download.
  # @param priority [Integer] Priority of the download (1-32).
  #   The higher the priority, the earlier the file will be downloaded.
  #   If the priorities of two files are equal, then the last one for which downloadFile/addFileToDownloads was called
  #   will be downloaded first.
  # @param offset [Integer] The starting position from which the file needs to be downloaded.
  # @param limit [Integer] Number of bytes which need to be downloaded starting from the "offset" position before the
  #   download will automatically be canceled; use 0 to download without a limit.
  # @param synchronous [Boolean] Pass true to return response only after the file download has succeeded, has failed,
  #   has been canceled, or a new downloadFile request with different offset/limit parameters was sent; pass false to return
  #   file state immediately, just after the download has been started.
  # @return [TD::Types::File]
  def download_file(file_id:, priority:, offset:, limit:, synchronous:)
    broadcast('@type'       => 'downloadFile',
              'file_id'     => file_id,
              'priority'    => priority,
              'offset'      => offset,
              'limit'       => limit,
              'synchronous' => synchronous)
  end
  
  # Replaces media preview in the list of media previews of a bot.
  # Returns the new preview after edit is completed server-side.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  #   The bot must be owned and must have the main Web App.
  # @param language_code [TD::Types::String] Language code of the media preview to edit.
  # @param file_id [Integer] File identifier of the media to replace.
  # @param content [TD::Types::InputStoryContent] Content of the new preview.
  # @return [TD::Types::BotMediaPreview]
  def edit_bot_media_preview(bot_user_id:, language_code:, file_id:, content:)
    broadcast('@type'         => 'editBotMediaPreview',
              'bot_user_id'   => bot_user_id,
              'language_code' => language_code,
              'file_id'       => file_id,
              'content'       => content)
  end
  
  # Edits a business chat link of the current account.
  # Requires Telegram Business subscription.
  # Returns the edited link.
  #
  # @param link [TD::Types::String] The link to edit.
  # @param link_info [TD::Types::InputBusinessChatLink] New description of the link.
  # @return [TD::Types::BusinessChatLink]
  def edit_business_chat_link(link:, link_info:)
    broadcast('@type'     => 'editBusinessChatLink',
              'link'      => link,
              'link_info' => link_info)
  end
  
  # Edits the caption of a message sent on behalf of a business account; for bots only.
  #
  # @param business_connection_id [TD::Types::String] Unique identifier of business connection on behalf of which the
  #   message was sent.
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @param caption [TD::Types::FormattedText] New message content caption; pass null to remove caption;
  #   0-getOption("message_caption_length_max") characters.
  # @param show_caption_above_media [Boolean] Pass true to show the caption above the media; otherwise, the caption
  #   will be shown below the media.
  #   Can be true only for animation, photo, and video messages.
  # @return [TD::Types::BusinessMessage]
  def edit_business_message_caption(business_connection_id:, chat_id:, message_id:, reply_markup:, caption:,
                                    show_caption_above_media:)
    broadcast('@type'                    => 'editBusinessMessageCaption',
              'business_connection_id'   => business_connection_id,
              'chat_id'                  => chat_id,
              'message_id'               => message_id,
              'reply_markup'             => reply_markup,
              'caption'                  => caption,
              'show_caption_above_media' => show_caption_above_media)
  end
  
  # Edits the content of a live location in a message sent on behalf of a business account; for bots only.
  #
  # @param business_connection_id [TD::Types::String] Unique identifier of business connection on behalf of which the
  #   message was sent.
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @param location [TD::Types::Location] New location content of the message; pass null to stop sharing the live
  #   location.
  # @param live_period [Integer] New time relative to the message send date, for which the location can be updated, in
  #   seconds.
  #   If 0x7FFFFFFF specified, then the location can be updated forever.
  #   Otherwise, must not exceed the current live_period by more than a day, and the live location expiration date must
  #   remain in the next 90 days.
  #   Pass 0 to keep the current live_period.
  # @param heading [Integer] The new direction in which the location moves, in degrees; 1-360.
  #   Pass 0 if unknown.
  # @param proximity_alert_radius [Integer] The new maximum distance for proximity alerts, in meters (0-100000).
  #   Pass 0 if the notification is disabled.
  # @return [TD::Types::BusinessMessage]
  def edit_business_message_live_location(business_connection_id:, chat_id:, message_id:, reply_markup:, location:,
                                          live_period:, heading:, proximity_alert_radius:)
    broadcast('@type'                  => 'editBusinessMessageLiveLocation',
              'business_connection_id' => business_connection_id,
              'chat_id'                => chat_id,
              'message_id'             => message_id,
              'reply_markup'           => reply_markup,
              'location'               => location,
              'live_period'            => live_period,
              'heading'                => heading,
              'proximity_alert_radius' => proximity_alert_radius)
  end
  
  # Edits the content of a message with an animation, an audio, a document, a photo or a video in a message sent on
  #   behalf of a business account; for bots only.
  #
  # @param business_connection_id [TD::Types::String] Unique identifier of business connection on behalf of which the
  #   message was sent.
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param input_message_content [TD::Types::InputMessageContent] New content of the message.
  #   Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument,
  #   {TD::Types::InputMessageContent::Photo} or inputMessageVideo.
  # @return [TD::Types::BusinessMessage]
  def edit_business_message_media(business_connection_id:, chat_id:, message_id:, reply_markup:, input_message_content:)
    broadcast('@type'                  => 'editBusinessMessageMedia',
              'business_connection_id' => business_connection_id,
              'chat_id'                => chat_id,
              'message_id'             => message_id,
              'reply_markup'           => reply_markup,
              'input_message_content'  => input_message_content)
  end
  
  # Edits the reply markup of a message sent on behalf of a business account; for bots only.
  #
  # @param business_connection_id [TD::Types::String] Unique identifier of business connection on behalf of which the
  #   message was sent.
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @return [TD::Types::BusinessMessage]
  def edit_business_message_reply_markup(business_connection_id:, chat_id:, message_id:, reply_markup:)
    broadcast('@type'                  => 'editBusinessMessageReplyMarkup',
              'business_connection_id' => business_connection_id,
              'chat_id'                => chat_id,
              'message_id'             => message_id,
              'reply_markup'           => reply_markup)
  end
  
  # Edits the text of a text or game message sent on behalf of a business account; for bots only.
  #
  # @param business_connection_id [TD::Types::String] Unique identifier of business connection on behalf of which the
  #   message was sent.
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @param input_message_content [TD::Types::InputMessageContent] New text content of the message.
  #   Must be of type inputMessageText.
  # @return [TD::Types::BusinessMessage]
  def edit_business_message_text(business_connection_id:, chat_id:, message_id:, reply_markup:, input_message_content:)
    broadcast('@type'                  => 'editBusinessMessageText',
              'business_connection_id' => business_connection_id,
              'chat_id'                => chat_id,
              'message_id'             => message_id,
              'reply_markup'           => reply_markup,
              'input_message_content'  => input_message_content)
  end
  
  # Edits existing chat folder.
  # Returns information about the edited chat folder.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @param folder [TD::Types::ChatFolder] The edited chat folder.
  # @return [TD::Types::ChatFolderInfo]
  def edit_chat_folder(chat_folder_id:, folder:)
    broadcast('@type'          => 'editChatFolder',
              'chat_folder_id' => chat_folder_id,
              'folder'         => folder)
  end
  
  # Edits an invite link for a chat folder.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @param invite_link [TD::Types::String] Invite link to be edited.
  # @param name [TD::Types::String] New name of the link; 0-32 characters.
  # @param chat_ids [Array<Integer>] New identifiers of chats to be accessible by the invite link.
  #   Use getChatsForChatFolderInviteLink to get suitable chats.
  #   Basic groups will be automatically converted to supergroups before link editing.
  # @return [TD::Types::ChatFolderInviteLink]
  def edit_chat_folder_invite_link(chat_folder_id:, invite_link:, name:, chat_ids:)
    broadcast('@type'          => 'editChatFolderInviteLink',
              'chat_folder_id' => chat_folder_id,
              'invite_link'    => invite_link,
              'name'           => name,
              'chat_ids'       => chat_ids)
  end
  
  # Edits a non-primary invite link for a chat.
  # Available for basic groups, supergroups, and channels.
  # If the link creates a subscription, then expiration_date, member_limit and creates_join_request must not be used
  #   Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for other
  #   links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link to be edited.
  # @param name [TD::Types::String] Invite link name; 0-32 characters.
  # @param expiration_date [Integer] Point in time (Unix timestamp) when the link will expire; pass 0 if never.
  # @param member_limit [Integer] The maximum number of chat members that can join the chat via the link
  #   simultaneously; 0-99999; pass 0 if not limited.
  # @param creates_join_request [Boolean] Pass true if users joining the chat via the link need to be approved by chat
  #   administrators.
  #   In this case, member_limit must be 0.
  # @return [TD::Types::ChatInviteLink]
  def edit_chat_invite_link(chat_id:, invite_link:, name:, expiration_date:, member_limit:, creates_join_request:)
    broadcast('@type'                => 'editChatInviteLink',
              'chat_id'              => chat_id,
              'invite_link'          => invite_link,
              'name'                 => name,
              'expiration_date'      => expiration_date,
              'member_limit'         => member_limit,
              'creates_join_request' => creates_join_request)
  end
  
  # Edits a subscription invite link for a channel chat.
  # Requires can_invite_users right in the chat for own links and owner privileges for other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link to be edited.
  # @param name [TD::Types::String] Invite link name; 0-32 characters.
  # @return [TD::Types::ChatInviteLink]
  def edit_chat_subscription_invite_link(chat_id:, invite_link:, name:)
    broadcast('@type'       => 'editChatSubscriptionInviteLink',
              'chat_id'     => chat_id,
              'invite_link' => invite_link,
              'name'        => name)
  end
  
  # Edits information about a custom local language pack in the current localization target.
  # Can be called before authorization.
  #
  # @param info [TD::Types::LanguagePackInfo] New information about the custom local language pack.
  # @return [TD::Types::Ok]
  def edit_custom_language_pack_info(info:)
    broadcast('@type' => 'editCustomLanguagePackInfo',
              'info'  => info)
  end
  
  # Edits title and icon of a topic in a forum supergroup chat; requires can_manage_topics right in the supergroup
  #   unless the user is creator of the topic.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @param name [TD::Types::String, nil] New name of the topic; 0-128 characters.
  #   If empty, the previous topic name is kept.
  # @param edit_icon_custom_emoji [Boolean] Pass true to edit the icon of the topic.
  #   Icon of the General topic can't be edited.
  # @param icon_custom_emoji_id [Integer] Identifier of the new custom emoji for topic icon; pass 0 to remove the
  #   custom emoji.
  #   Ignored if edit_icon_custom_emoji is false.
  #   Telegram Premium users can use any custom emoji, other users can use only a custom emoji returned by
  #   getForumTopicDefaultIcons.
  # @return [TD::Types::Ok]
  def edit_forum_topic(chat_id:, message_thread_id:, name: nil, edit_icon_custom_emoji:, icon_custom_emoji_id:)
    broadcast('@type'                  => 'editForumTopic',
              'chat_id'                => chat_id,
              'message_thread_id'      => message_thread_id,
              'name'                   => name,
              'edit_icon_custom_emoji' => edit_icon_custom_emoji,
              'icon_custom_emoji_id'   => icon_custom_emoji_id)
  end
  
  # Edits the caption of an inline message sent via a bot; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @param caption [TD::Types::FormattedText] New message content caption; pass null to remove caption;
  #   0-getOption("message_caption_length_max") characters.
  # @param show_caption_above_media [Boolean] Pass true to show the caption above the media; otherwise, the caption
  #   will be shown below the media.
  #   Can be true only for animation, photo, and video messages.
  # @return [TD::Types::Ok]
  def edit_inline_message_caption(inline_message_id:, reply_markup:, caption:, show_caption_above_media:)
    broadcast('@type'                    => 'editInlineMessageCaption',
              'inline_message_id'        => inline_message_id,
              'reply_markup'             => reply_markup,
              'caption'                  => caption,
              'show_caption_above_media' => show_caption_above_media)
  end
  
  # Edits the content of a live location in an inline message sent via a bot; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @param location [TD::Types::Location] New location content of the message; pass null to stop sharing the live
  #   location.
  # @param live_period [Integer] New time relative to the message send date, for which the location can be updated, in
  #   seconds.
  #   If 0x7FFFFFFF specified, then the location can be updated forever.
  #   Otherwise, must not exceed the current live_period by more than a day, and the live location expiration date must
  #   remain in the next 90 days.
  #   Pass 0 to keep the current live_period.
  # @param heading [Integer] The new direction in which the location moves, in degrees; 1-360.
  #   Pass 0 if unknown.
  # @param proximity_alert_radius [Integer] The new maximum distance for proximity alerts, in meters (0-100000).
  #   Pass 0 if the notification is disabled.
  # @return [TD::Types::Ok]
  def edit_inline_message_live_location(inline_message_id:, reply_markup:, location:, live_period:, heading:,
                                        proximity_alert_radius:)
    broadcast('@type'                  => 'editInlineMessageLiveLocation',
              'inline_message_id'      => inline_message_id,
              'reply_markup'           => reply_markup,
              'location'               => location,
              'live_period'            => live_period,
              'heading'                => heading,
              'proximity_alert_radius' => proximity_alert_radius)
  end
  
  # Edits the content of a message with an animation, an audio, a document, a photo or a video in an inline message
  #   sent via a bot; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param input_message_content [TD::Types::InputMessageContent] New content of the message.
  #   Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument,
  #   {TD::Types::InputMessageContent::Photo} or inputMessageVideo.
  # @return [TD::Types::Ok]
  def edit_inline_message_media(inline_message_id:, reply_markup:, input_message_content:)
    broadcast('@type'                 => 'editInlineMessageMedia',
              'inline_message_id'     => inline_message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits the reply markup of an inline message sent via a bot; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @return [TD::Types::Ok]
  def edit_inline_message_reply_markup(inline_message_id:, reply_markup:)
    broadcast('@type'             => 'editInlineMessageReplyMarkup',
              'inline_message_id' => inline_message_id,
              'reply_markup'      => reply_markup)
  end
  
  # Edits the text of an inline text or game message sent via a bot; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @param input_message_content [TD::Types::InputMessageContent] New text content of the message.
  #   Must be of type inputMessageText.
  # @return [TD::Types::Ok]
  def edit_inline_message_text(inline_message_id:, reply_markup:, input_message_content:)
    broadcast('@type'                 => 'editInlineMessageText',
              'inline_message_id'     => inline_message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits the message content caption.
  # Returns the edited message after the edit is completed on the server side.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  #   Use messageProperties.can_be_edited to check whether the message can be edited.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param caption [TD::Types::FormattedText] New message content caption; 0-getOption("message_caption_length_max")
  #   characters; pass null to remove caption.
  # @param show_caption_above_media [Boolean] Pass true to show the caption above the media; otherwise, the caption
  #   will be shown below the media.
  #   Can be true only for animation, photo, and video messages.
  # @return [TD::Types::Message]
  def edit_message_caption(chat_id:, message_id:, reply_markup:, caption:, show_caption_above_media:)
    broadcast('@type'                    => 'editMessageCaption',
              'chat_id'                  => chat_id,
              'message_id'               => message_id,
              'reply_markup'             => reply_markup,
              'caption'                  => caption,
              'show_caption_above_media' => show_caption_above_media)
  end
  
  # Edits the message content of a live location.
  # Messages can be edited for a limited period of time specified in the live location.
  # Returns the edited message after the edit is completed on the server side.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  #   Use messageProperties.can_be_edited to check whether the message can be edited.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param location [TD::Types::Location] New location content of the message; pass null to stop sharing the live
  #   location.
  # @param live_period [Integer] New time relative to the message send date, for which the location can be updated, in
  #   seconds.
  #   If 0x7FFFFFFF specified, then the location can be updated forever.
  #   Otherwise, must not exceed the current live_period by more than a day, and the live location expiration date must
  #   remain in the next 90 days.
  #   Pass 0 to keep the current live_period.
  # @param heading [Integer] The new direction in which the location moves, in degrees; 1-360.
  #   Pass 0 if unknown.
  # @param proximity_alert_radius [Integer] The new maximum distance for proximity alerts, in meters (0-100000).
  #   Pass 0 if the notification is disabled.
  # @return [TD::Types::Message]
  def edit_message_live_location(chat_id:, message_id:, reply_markup:, location:, live_period:, heading:,
                                 proximity_alert_radius:)
    broadcast('@type'                  => 'editMessageLiveLocation',
              'chat_id'                => chat_id,
              'message_id'             => message_id,
              'reply_markup'           => reply_markup,
              'location'               => location,
              'live_period'            => live_period,
              'heading'                => heading,
              'proximity_alert_radius' => proximity_alert_radius)
  end
  
  # Edits the content of a message with an animation, an audio, a document, a photo or a video, including message
  #   caption.
  # If only the caption needs to be edited, use editMessageCaption instead.
  # The media can't be edited if the message was set to self-destruct or to a self-destructing media.
  # The type of message content in an album can't be changed with exception of replacing a photo with a video or vice
  #   versa.
  # Returns the edited message after the edit is completed on the server side.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  #   Use messageProperties.can_be_edited to check whether the message can be edited.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param input_message_content [TD::Types::InputMessageContent] New content of the message.
  #   Must be one of the following types: inputMessageAnimation, inputMessageAudio, inputMessageDocument,
  #   {TD::Types::InputMessageContent::Photo} or inputMessageVideo.
  # @return [TD::Types::Message]
  def edit_message_media(chat_id:, message_id:, reply_markup:, input_message_content:)
    broadcast('@type'                 => 'editMessageMedia',
              'chat_id'               => chat_id,
              'message_id'            => message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits the message reply markup; for bots only.
  # Returns the edited message after the edit is completed on the server side.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  #   Use messageProperties.can_be_edited to check whether the message can be edited.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @return [TD::Types::Message]
  def edit_message_reply_markup(chat_id:, message_id:, reply_markup:)
    broadcast('@type'        => 'editMessageReplyMarkup',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'reply_markup' => reply_markup)
  end
  
  # Edits the time when a scheduled message will be sent.
  # Scheduling state of all messages in the same album or forwarded together with the message will be also changed.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  #   Use messageProperties.can_edit_scheduling_state to check whether the message is suitable.
  # @param scheduling_state [TD::Types::MessageSchedulingState] The new message scheduling state; pass null to send the
  #   message immediately.
  # @return [TD::Types::Ok]
  def edit_message_scheduling_state(chat_id:, message_id:, scheduling_state:)
    broadcast('@type'            => 'editMessageSchedulingState',
              'chat_id'          => chat_id,
              'message_id'       => message_id,
              'scheduling_state' => scheduling_state)
  end
  
  # Edits the text of a message (or a text of a game message).
  # Returns the edited message after the edit is completed on the server side.
  #
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  #   Use messageProperties.can_be_edited to check whether the message can be edited.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @param input_message_content [TD::Types::InputMessageContent] New text content of the message.
  #   Must be of type inputMessageText.
  # @return [TD::Types::Message]
  def edit_message_text(chat_id:, message_id:, reply_markup:, input_message_content:)
    broadcast('@type'                 => 'editMessageText',
              'chat_id'               => chat_id,
              'message_id'            => message_id,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Edits an existing proxy server for network requests.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @param server [TD::Types::String] Proxy server domain or IP address.
  # @param port [Integer] Proxy server port.
  # @param enable [Boolean] Pass true to immediately enable the proxy.
  # @param type [TD::Types::ProxyType] Proxy type.
  # @return [TD::Types::Proxy]
  def edit_proxy(proxy_id:, server:, port:, enable:, type:)
    broadcast('@type'    => 'editProxy',
              'proxy_id' => proxy_id,
              'server'   => server,
              'port'     => port,
              'enable'   => enable,
              'type'     => type)
  end
  
  # Asynchronously edits the text, media or caption of a quick reply message.
  # Use quickReplyMessage.can_be_edited to check whether a message can be edited.
  # Text message can be edited only to a text message.
  # The type of message content in an album can't be changed with exception of replacing a photo with a video or vice
  #   versa.
  #
  # @param shortcut_id [Integer] Unique identifier of the quick reply shortcut with the message.
  # @param message_id [Integer] Identifier of the message.
  # @param input_message_content [TD::Types::InputMessageContent] New content of the message.
  #   Must be one of the following types: inputMessageText, inputMessageAnimation, inputMessageAudio,
  #   inputMessageDocument, {TD::Types::InputMessageContent::Photo} or inputMessageVideo.
  # @return [TD::Types::Ok]
  def edit_quick_reply_message(shortcut_id:, message_id:, input_message_content:)
    broadcast('@type'                 => 'editQuickReplyMessage',
              'shortcut_id'           => shortcut_id,
              'message_id'            => message_id,
              'input_message_content' => input_message_content)
  end
  
  # Cancels or reenables Telegram Star subscription to a channel.
  #
  # @param subscription_id [TD::Types::String] Identifier of the subscription to change.
  # @param is_canceled [Boolean] New value of is_canceled.
  # @return [TD::Types::Ok]
  def edit_star_subscription(subscription_id:, is_canceled:)
    broadcast('@type'           => 'editStarSubscription',
              'subscription_id' => subscription_id,
              'is_canceled'     => is_canceled)
  end
  
  # Changes content and caption of a story.
  # Can be called only if story.can_be_edited == true.
  #
  # @param story_sender_chat_id [Integer] Identifier of the chat that posted the story.
  # @param story_id [Integer] Identifier of the story to edit.
  # @param content [TD::Types::InputStoryContent] New content of the story; pass null to keep the current content.
  # @param areas [TD::Types::InputStoryAreas] New clickable rectangle areas to be shown on the story media; pass null
  #   to keep the current areas.
  #   Areas can't be edited if story content isn't changed.
  # @param caption [TD::Types::FormattedText] New story caption; pass null to keep the current caption.
  # @return [TD::Types::Ok]
  def edit_story(story_sender_chat_id:, story_id:, content:, areas:, caption:)
    broadcast('@type'                => 'editStory',
              'story_sender_chat_id' => story_sender_chat_id,
              'story_id'             => story_id,
              'content'              => content,
              'areas'                => areas,
              'caption'              => caption)
  end
  
  # Changes cover of a video story.
  # Can be called only if story.can_be_edited == true and the story isn't being edited now.
  #
  # @param story_sender_chat_id [Integer] Identifier of the chat that posted the story.
  # @param story_id [Integer] Identifier of the story to edit.
  # @param cover_frame_timestamp [Float] New timestamp of the frame, which will be used as video thumbnail.
  # @return [TD::Types::Ok]
  def edit_story_cover(story_sender_chat_id:, story_id:, cover_frame_timestamp:)
    broadcast('@type'                 => 'editStoryCover',
              'story_sender_chat_id'  => story_sender_chat_id,
              'story_id'              => story_id,
              'cover_frame_timestamp' => cover_frame_timestamp)
  end
  
  # Enables a proxy.
  # Only one proxy can be enabled at a time.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @return [TD::Types::Ok]
  def enable_proxy(proxy_id:)
    broadcast('@type'    => 'enableProxy',
              'proxy_id' => proxy_id)
  end
  
  # Ends a group call.
  # Requires groupCall.can_be_managed.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def end_group_call(group_call_id:)
    broadcast('@type'         => 'endGroupCall',
              'group_call_id' => group_call_id)
  end
  
  # Ends recording of an active group call.
  # Requires groupCall.can_be_managed group call flag.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def end_group_call_recording(group_call_id:)
    broadcast('@type'         => 'endGroupCallRecording',
              'group_call_id' => group_call_id)
  end
  
  # Ends screen sharing in a joined group call.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def end_group_call_screen_sharing(group_call_id:)
    broadcast('@type'         => 'endGroupCallScreenSharing',
              'group_call_id' => group_call_id)
  end
  
  # Finishes the file generation.
  #
  # @param generation_id [Integer] The identifier of the generation process.
  # @param error [TD::Types::Error] If passed, the file generation has failed and must be terminated; pass null if the
  #   file generation succeeded.
  # @return [TD::Types::Ok]
  def finish_file_generation(generation_id:, error:)
    broadcast('@type'         => 'finishFileGeneration',
              'generation_id' => generation_id,
              'error'         => error)
  end
  
  # Forwards previously sent messages.
  # Returns the forwarded messages in the same order as the message identifiers passed in message_ids.
  # If a message can't be forwarded, null will be returned instead of the message.
  #
  # @param chat_id [Integer] Identifier of the chat to which to forward messages.
  # @param message_thread_id [Integer] If not 0, the message thread identifier in which the message will be sent; for
  #   forum threads only.
  # @param from_chat_id [Integer] Identifier of the chat from which to forward messages.
  # @param message_ids [Array<Integer>] Identifiers of the messages to forward.
  #   Message identifiers must be in a strictly increasing order.
  #   At most 100 messages can be forwarded simultaneously.
  #   A message can be forwarded only if messageProperties.can_be_forwarded.
  # @param options [TD::Types::MessageSendOptions] Options to be used to send the messages; pass null to use default
  #   options.
  # @param send_copy [Boolean] Pass true to copy content of the messages without reference to the original sender.
  #   Always true if the messages are forwarded to a secret chat or are local.
  # @param remove_caption [Boolean] Pass true to remove media captions of message copies.
  #   Ignored if send_copy is false.
  # @return [TD::Types::Messages]
  def forward_messages(chat_id:, message_thread_id:, from_chat_id:, message_ids:, options:, send_copy:, remove_caption:)
    broadcast('@type'             => 'forwardMessages',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id,
              'from_chat_id'      => from_chat_id,
              'message_ids'       => message_ids,
              'options'           => options,
              'send_copy'         => send_copy,
              'remove_caption'    => remove_caption)
  end
  
  # Returns the period of inactivity after which the account of the current user will automatically be deleted.
  #
  # @return [TD::Types::AccountTtl]
  def get_account_ttl
    broadcast('@type' => 'getAccountTtl')
  end
  
  # Returns all active sessions of the current user.
  #
  # @return [TD::Types::Sessions]
  def get_active_sessions
    broadcast('@type' => 'getActiveSessions')
  end
  
  # Returns all available Telegram Passport elements.
  #
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::PassportElements]
  def get_all_passport_elements(password:)
    broadcast('@type'    => 'getAllPassportElements',
              'password' => password)
  end
  
  # Returns unique emoji that correspond to stickers to be found by the getStickers(sticker_type, query, 1000000,
  #   chat_id).
  #
  # @param sticker_type [TD::Types::StickerType] Type of the stickers to search for.
  # @param query [TD::Types::String] Search query.
  # @param chat_id [Integer] Chat identifier for which to find stickers.
  # @param return_only_main_emoji [Boolean] Pass true if only main emoji for each found sticker must be included in the
  #   result.
  # @return [TD::Types::Emojis]
  def get_all_sticker_emojis(sticker_type:, query:, chat_id:, return_only_main_emoji:)
    broadcast('@type'                  => 'getAllStickerEmojis',
              'sticker_type'           => sticker_type,
              'query'                  => query,
              'chat_id'                => chat_id,
              'return_only_main_emoji' => return_only_main_emoji)
  end
  
  # Returns an animated emoji corresponding to a given emoji.
  # Returns a 404 error if the emoji has no animated emoji.
  #
  # @param emoji [TD::Types::String] The emoji.
  # @return [TD::Types::AnimatedEmoji]
  def get_animated_emoji(emoji:)
    broadcast('@type' => 'getAnimatedEmoji',
              'emoji' => emoji)
  end
  
  # Returns application config, provided by the server.
  # Can be called before authorization.
  #
  # @return [TD::Types::JsonValue]
  def get_application_config
    broadcast('@type' => 'getApplicationConfig')
  end
  
  # Returns the link for downloading official Telegram application to be used when the current user invites friends to
  #   Telegram.
  #
  # @return [TD::Types::HttpUrl]
  def get_application_download_link
    broadcast('@type' => 'getApplicationDownloadLink')
  end
  
  # Returns settings for automatic moving of chats to and from the Archive chat lists.
  #
  # @return [TD::Types::ArchiveChatListSettings]
  def get_archive_chat_list_settings
    broadcast('@type' => 'getArchiveChatListSettings')
  end
  
  # Returns a list of archived sticker sets.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to return.
  # @param offset_sticker_set_id [Integer] Identifier of the sticker set from which to return the result; use 0 to get
  #   results from the beginning.
  # @param limit [Integer] The maximum number of sticker sets to return; up to 100.
  # @return [TD::Types::StickerSets]
  def get_archived_sticker_sets(sticker_type:, offset_sticker_set_id:, limit:)
    broadcast('@type'                 => 'getArchivedStickerSets',
              'sticker_type'          => sticker_type,
              'offset_sticker_set_id' => offset_sticker_set_id,
              'limit'                 => limit)
  end
  
  # Returns a list of sticker sets attached to a file, including regular, mask, and emoji sticker sets.
  # Currently, only animations, photos, and videos can have attached sticker sets.
  #
  # @param file_id [Integer] File identifier.
  # @return [TD::Types::StickerSets]
  def get_attached_sticker_sets(file_id:)
    broadcast('@type'   => 'getAttachedStickerSets',
              'file_id' => file_id)
  end
  
  # Returns information about a bot that can be added to attachment or side menu.
  #
  # @param bot_user_id [Integer] Bot's user identifier.
  # @return [TD::Types::AttachmentMenuBot]
  def get_attachment_menu_bot(bot_user_id:)
    broadcast('@type'       => 'getAttachmentMenuBot',
              'bot_user_id' => bot_user_id)
  end
  
  # Returns the current authorization state; this is an offline request.
  # For informational purposes only.
  # Use updateAuthorizationState instead to maintain the current authorization state.
  # Can be called before initialization.
  #
  # @return [TD::Types::AuthorizationState]
  def get_authorization_state
    broadcast('@type' => 'getAuthorizationState')
  end
  
  # Returns auto-download settings presets for the current user.
  #
  # @return [TD::Types::AutoDownloadSettingsPresets]
  def get_auto_download_settings_presets
    broadcast('@type' => 'getAutoDownloadSettingsPresets')
  end
  
  # Returns autosave settings for the current user.
  #
  # @return [TD::Types::AutosaveSettings]
  def get_autosave_settings
    broadcast('@type' => 'getAutosaveSettings')
  end
  
  # Returns the list of available chat boost slots for the current user.
  #
  # @return [TD::Types::ChatBoostSlots]
  def get_available_chat_boost_slots
    broadcast('@type' => 'getAvailableChatBoostSlots')
  end
  
  # Constructs a persistent HTTP URL for a background.
  #
  # @param name [TD::Types::String] Background name.
  # @param type [TD::Types::BackgroundType] Background type; {TD::Types::BackgroundType::ChatTheme} isn't supported.
  # @return [TD::Types::HttpUrl]
  def get_background_url(name:, type:)
    broadcast('@type' => 'getBackgroundUrl',
              'name'  => name,
              'type'  => type)
  end
  
  # Returns information about a bank card.
  #
  # @param bank_card_number [TD::Types::String] The bank card number.
  # @return [TD::Types::BankCardInfo]
  def get_bank_card_info(bank_card_number:)
    broadcast('@type'            => 'getBankCardInfo',
              'bank_card_number' => bank_card_number)
  end
  
  # Returns information about a basic group by its identifier.
  # This is an offline request if the current user is not a bot.
  #
  # @param basic_group_id [Integer] Basic group identifier.
  # @return [TD::Types::BasicGroup]
  def get_basic_group(basic_group_id:)
    broadcast('@type'          => 'getBasicGroup',
              'basic_group_id' => basic_group_id)
  end
  
  # Returns full information about a basic group by its identifier.
  #
  # @param basic_group_id [Integer] Basic group identifier.
  # @return [TD::Types::BasicGroupFullInfo]
  def get_basic_group_full_info(basic_group_id:)
    broadcast('@type'          => 'getBasicGroupFullInfo',
              'basic_group_id' => basic_group_id)
  end
  
  # Returns users and chats that were blocked by the current user.
  #
  # @param block_list [TD::Types::BlockList] Block list from which to return users.
  # @param offset [Integer] Number of users and chats to skip in the result; must be non-negative.
  # @param limit [Integer] The maximum number of users and chats to return; up to 100.
  # @return [TD::Types::MessageSenders]
  def get_blocked_message_senders(block_list:, offset:, limit:)
    broadcast('@type'      => 'getBlockedMessageSenders',
              'block_list' => block_list,
              'offset'     => offset,
              'limit'      => limit)
  end
  
  # Returns the text shown in the chat with a bot if the chat is empty in the given language.
  # Can be called only if userTypeBot.can_be_edited == true.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code or an empty string.
  # @return [TD::Types::Text]
  def get_bot_info_description(bot_user_id:, language_code:)
    broadcast('@type'         => 'getBotInfoDescription',
              'bot_user_id'   => bot_user_id,
              'language_code' => language_code)
  end
  
  # Returns the text shown on a bot's profile page and sent together with the link when users share the bot in the
  #   given language.
  # Can be called only if userTypeBot.can_be_edited == true.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code or an empty string.
  # @return [TD::Types::Text]
  def get_bot_info_short_description(bot_user_id:, language_code:)
    broadcast('@type'         => 'getBotInfoShortDescription',
              'bot_user_id'   => bot_user_id,
              'language_code' => language_code)
  end
  
  # Returns the list of media previews for the given language and the list of languages for which the bot has dedicated
  #   previews.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  #   The bot must be owned and must have the main Web App.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code for which to get previews.
  #   If empty, then default previews are returned.
  # @return [TD::Types::BotMediaPreviewInfo]
  def get_bot_media_preview_info(bot_user_id:, language_code:)
    broadcast('@type'         => 'getBotMediaPreviewInfo',
              'bot_user_id'   => bot_user_id,
              'language_code' => language_code)
  end
  
  # Returns the list of media previews of a bot.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  #   The bot must have the main Web App.
  # @return [TD::Types::BotMediaPreviews]
  def get_bot_media_previews(bot_user_id:)
    broadcast('@type'       => 'getBotMediaPreviews',
              'bot_user_id' => bot_user_id)
  end
  
  # Returns the name of a bot in the given language.
  # Can be called only if userTypeBot.can_be_edited == true.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code or an empty string.
  # @return [TD::Types::Text]
  def get_bot_name(bot_user_id:, language_code:)
    broadcast('@type'         => 'getBotName',
              'bot_user_id'   => bot_user_id,
              'language_code' => language_code)
  end
  
  # Returns information about a business chat link.
  #
  # @param link_name [TD::Types::String] Name of the link.
  # @return [TD::Types::BusinessChatLinkInfo]
  def get_business_chat_link_info(link_name:)
    broadcast('@type'     => 'getBusinessChatLinkInfo',
              'link_name' => link_name)
  end
  
  # Returns business chat links created for the current account.
  #
  # @return [TD::Types::BusinessChatLinks]
  def get_business_chat_links
    broadcast('@type' => 'getBusinessChatLinks')
  end
  
  # Returns the business bot that is connected to the current user account.
  # Returns a 404 error if there is no connected bot.
  #
  # @return [TD::Types::BusinessConnectedBot]
  def get_business_connected_bot
    broadcast('@type' => 'getBusinessConnectedBot')
  end
  
  # Returns information about a business connection by its identifier; for bots only.
  #
  # @param connection_id [TD::Types::String] Identifier of the business connection to return.
  # @return [TD::Types::BusinessConnection]
  def get_business_connection(connection_id:)
    broadcast('@type'         => 'getBusinessConnection',
              'connection_id' => connection_id)
  end
  
  # Returns information about features, available to Business users.
  #
  # @param source [TD::Types::BusinessFeature] Source of the request; pass null if the method is called from settings
  #   or some non-standard source.
  # @return [TD::Types::BusinessFeatures]
  def get_business_features(source:)
    broadcast('@type'  => 'getBusinessFeatures',
              'source' => source)
  end
  
  # Sends a callback query to a bot and returns an answer.
  # Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  #
  # @param chat_id [Integer] Identifier of the chat with the message.
  # @param message_id [Integer] Identifier of the message from which the query originated.
  #   The message must not be scheduled.
  # @param payload [TD::Types::CallbackQueryPayload] Query payload.
  # @return [TD::Types::CallbackQueryAnswer]
  def get_callback_query_answer(chat_id:, message_id:, payload:)
    broadcast('@type'      => 'getCallbackQueryAnswer',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'payload'    => payload)
  end
  
  # Returns information about a message with the callback button that originated a callback query; for bots only.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @param message_id [Integer] Message identifier.
  # @param callback_query_id [Integer] Identifier of the callback query.
  # @return [TD::Types::Message]
  def get_callback_query_message(chat_id:, message_id:, callback_query_id:)
    broadcast('@type'             => 'getCallbackQueryMessage',
              'chat_id'           => chat_id,
              'message_id'        => message_id,
              'callback_query_id' => callback_query_id)
  end
  
  # Returns information about a chat by its identifier; this is an offline request if the current user is not a bot.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Chat]
  def get_chat(chat_id:)
    broadcast('@type'   => 'getChat',
              'chat_id' => chat_id)
  end
  
  # Returns the list of active stories posted by the given chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatActiveStories]
  def get_chat_active_stories(chat_id:)
    broadcast('@type'   => 'getChatActiveStories',
              'chat_id' => chat_id)
  end
  
  # Returns a list of administrators of the chat with their custom titles.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatAdministrators]
  def get_chat_administrators(chat_id:)
    broadcast('@type'   => 'getChatAdministrators',
              'chat_id' => chat_id)
  end
  
  # Returns the list of all stories posted by the given chat; requires can_edit_stories right in the chat.
  # The stories are returned in reverse chronological order (i.e., in order of decreasing story_id).
  # For optimal performance, the number of returned stories is chosen by TDLib.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param from_story_id [Integer] Identifier of the story starting from which stories must be returned; use 0 to get
  #   results from the last story.
  # @param limit [Integer] The maximum number of stories to be returned For optimal performance, the number of returned
  #   stories is chosen by TDLib and can be smaller than the specified limit.
  # @return [TD::Types::Stories]
  def get_chat_archived_stories(chat_id:, from_story_id:, limit:)
    broadcast('@type'         => 'getChatArchivedStories',
              'chat_id'       => chat_id,
              'from_story_id' => from_story_id,
              'limit'         => limit)
  end
  
  # Returns the list of message sender identifiers, which can be used to send messages in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatMessageSenders]
  def get_chat_available_message_senders(chat_id:)
    broadcast('@type'   => 'getChatAvailableMessageSenders',
              'chat_id' => chat_id)
  end
  
  # Returns the list of features available for different chat boost levels; this is an offline request.
  #
  # @param is_channel [Boolean] Pass true to get the list of features for channels; pass false to get the list of
  #   features for supergroups.
  # @return [TD::Types::ChatBoostFeatures]
  def get_chat_boost_features(is_channel:)
    broadcast('@type'      => 'getChatBoostFeatures',
              'is_channel' => is_channel)
  end
  
  # Returns the list of features available on the specific chat boost level; this is an offline request.
  #
  # @param is_channel [Boolean] Pass true to get the list of features for channels; pass false to get the list of
  #   features for supergroups.
  # @param level [Integer] Chat boost level.
  # @return [TD::Types::ChatBoostLevelFeatures]
  def get_chat_boost_level_features(is_channel:, level:)
    broadcast('@type'      => 'getChatBoostLevelFeatures',
              'is_channel' => is_channel,
              'level'      => level)
  end
  
  # Returns an HTTPS link to boost the specified supergroup or channel chat.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @return [TD::Types::ChatBoostLink]
  def get_chat_boost_link(chat_id:)
    broadcast('@type'   => 'getChatBoostLink',
              'chat_id' => chat_id)
  end
  
  # Returns information about a link to boost a chat.
  # Can be called for any internal link of the type internalLinkTypeChatBoost.
  #
  # @param url [TD::Types::String] The link to boost a chat.
  # @return [TD::Types::ChatBoostLinkInfo]
  def get_chat_boost_link_info(url:)
    broadcast('@type' => 'getChatBoostLinkInfo',
              'url'   => url)
  end
  
  # Returns the current boost status for a supergroup or a channel chat.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @return [TD::Types::ChatBoostStatus]
  def get_chat_boost_status(chat_id:)
    broadcast('@type'   => 'getChatBoostStatus',
              'chat_id' => chat_id)
  end
  
  # Returns the list of boosts applied to a chat; requires administrator rights in the chat.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param only_gift_codes [Boolean] Pass true to receive only boosts received from gift codes and giveaways created by
  #   the chat.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of boosts to be returned; up to 100.
  #   For optimal performance, the number of returned boosts can be smaller than the specified limit.
  # @return [TD::Types::FoundChatBoosts]
  def get_chat_boosts(chat_id:, only_gift_codes:, offset:, limit:)
    broadcast('@type'           => 'getChatBoosts',
              'chat_id'         => chat_id,
              'only_gift_codes' => only_gift_codes,
              'offset'          => offset,
              'limit'           => limit)
  end
  
  # Returns a list of service actions taken by chat members and administrators in the last 48 hours.
  # Available only for supergroups and channels.
  # Requires administrator rights.
  # Returns results in reverse chronological order (i.e., in order of decreasing event_id).
  #
  # @param chat_id [Integer] Chat identifier.
  # @param query [TD::Types::String] Search query by which to filter events.
  # @param from_event_id [Integer] Identifier of an event from which to return results.
  #   Use 0 to get results from the latest events.
  # @param limit [Integer] The maximum number of events to return; up to 100.
  # @param filters [TD::Types::ChatEventLogFilters] The types of events to return; pass null to get chat events of all
  #   types.
  # @param user_ids [Array<Integer>] User identifiers by which to filter events.
  #   By default, events relating to all users will be returned.
  # @return [TD::Types::ChatEvents]
  def get_chat_event_log(chat_id:, query:, from_event_id:, limit:, filters:, user_ids:)
    broadcast('@type'         => 'getChatEventLog',
              'chat_id'       => chat_id,
              'query'         => query,
              'from_event_id' => from_event_id,
              'limit'         => limit,
              'filters'       => filters,
              'user_ids'      => user_ids)
  end
  
  # Returns information about a chat folder by its identifier.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @return [TD::Types::ChatFolder]
  def get_chat_folder(chat_folder_id:)
    broadcast('@type'          => 'getChatFolder',
              'chat_folder_id' => chat_folder_id)
  end
  
  # Returns approximate number of chats in a being created chat folder.
  # Main and archive chat lists must be fully preloaded for this function to work correctly.
  #
  # @param folder [TD::Types::ChatFolder] The new chat folder.
  # @return [TD::Types::Count]
  def get_chat_folder_chat_count(folder:)
    broadcast('@type'  => 'getChatFolderChatCount',
              'folder' => folder)
  end
  
  # Returns identifiers of pinned or always included chats from a chat folder, which are suggested to be left when the
  #   chat folder is deleted.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @return [TD::Types::Chats]
  def get_chat_folder_chats_to_leave(chat_folder_id:)
    broadcast('@type'          => 'getChatFolderChatsToLeave',
              'chat_folder_id' => chat_folder_id)
  end
  
  # Returns default icon name for a folder.
  # Can be called synchronously.
  #
  # @param folder [TD::Types::ChatFolder] Chat folder.
  # @return [TD::Types::ChatFolderIcon]
  def get_chat_folder_default_icon_name(folder:)
    broadcast('@type'  => 'getChatFolderDefaultIconName',
              'folder' => folder)
  end
  
  # Returns invite links created by the current user for a shareable chat folder.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @return [TD::Types::ChatFolderInviteLinks]
  def get_chat_folder_invite_links(chat_folder_id:)
    broadcast('@type'          => 'getChatFolderInviteLinks',
              'chat_folder_id' => chat_folder_id)
  end
  
  # Returns new chats added to a shareable chat folder by its owner.
  # The method must be called at most once in getOption("chat_folder_new_chats_update_period") for the given chat
  #   folder.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @return [TD::Types::Chats]
  def get_chat_folder_new_chats(chat_folder_id:)
    broadcast('@type'          => 'getChatFolderNewChats',
              'chat_folder_id' => chat_folder_id)
  end
  
  # Returns messages in a chat.
  # The messages are returned in reverse chronological order (i.e., in order of decreasing message_id).
  # For optimal performance, the number of returned messages is chosen by TDLib.
  # This is an offline request if only_local is true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param from_message_id [Integer] Identifier of the message starting from which history must be fetched; use 0 to
  #   get results from the last message.
  # @param offset [Integer] Specify 0 to get results from exactly the message from_message_id or a negative offset up
  #   to 99 to get additionally some newer messages.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   If the offset is negative, the limit must be greater than or equal to -offset.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @param only_local [Boolean] Pass true to get only messages that are available without sending network requests.
  # @return [TD::Types::Messages]
  def get_chat_history(chat_id:, from_message_id:, offset:, limit:, only_local:)
    broadcast('@type'           => 'getChatHistory',
              'chat_id'         => chat_id,
              'from_message_id' => from_message_id,
              'offset'          => offset,
              'limit'           => limit,
              'only_local'      => only_local)
  end
  
  # Returns information about an invite link.
  # Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to
  #   get other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link to get.
  # @return [TD::Types::ChatInviteLink]
  def get_chat_invite_link(chat_id:, invite_link:)
    broadcast('@type'       => 'getChatInviteLink',
              'chat_id'     => chat_id,
              'invite_link' => invite_link)
  end
  
  # Returns the list of chat administrators with number of their invite links.
  # Requires owner privileges in the chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatInviteLinkCounts]
  def get_chat_invite_link_counts(chat_id:)
    broadcast('@type'   => 'getChatInviteLinkCounts',
              'chat_id' => chat_id)
  end
  
  # Returns chat members joined a chat via an invite link.
  # Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link for which to return chat members.
  # @param only_with_expired_subscription [Boolean] Pass true if the link is a subscription link and only members with
  #   expired subscription must be returned.
  # @param offset_member [TD::Types::ChatInviteLinkMember] A chat member from which to return next chat members; pass
  #   null to get results from the beginning.
  # @param limit [Integer] The maximum number of chat members to return; up to 100.
  # @return [TD::Types::ChatInviteLinkMembers]
  def get_chat_invite_link_members(chat_id:, invite_link:, only_with_expired_subscription:, offset_member:, limit:)
    broadcast('@type'                          => 'getChatInviteLinkMembers',
              'chat_id'                        => chat_id,
              'invite_link'                    => invite_link,
              'only_with_expired_subscription' => only_with_expired_subscription,
              'offset_member'                  => offset_member,
              'limit'                          => limit)
  end
  
  # Returns invite links for a chat created by specified administrator.
  # Requires administrator privileges and can_invite_users right in the chat to get own links and owner privileges to
  #   get other links.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param creator_user_id [Integer] User identifier of a chat administrator.
  #   Must be an identifier of the current user for non-owner.
  # @param is_revoked [Boolean] Pass true if revoked links needs to be returned instead of active or expired.
  # @param offset_date [Integer] Creation date of an invite link starting after which to return invite links; use 0 to
  #   get results from the beginning.
  # @param offset_invite_link [TD::Types::String] Invite link starting after which to return invite links; use empty
  #   string to get results from the beginning.
  # @param limit [Integer] The maximum number of invite links to return; up to 100.
  # @return [TD::Types::ChatInviteLinks]
  def get_chat_invite_links(chat_id:, creator_user_id:, is_revoked:, offset_date:, offset_invite_link:, limit:)
    broadcast('@type'              => 'getChatInviteLinks',
              'chat_id'            => chat_id,
              'creator_user_id'    => creator_user_id,
              'is_revoked'         => is_revoked,
              'offset_date'        => offset_date,
              'offset_invite_link' => offset_invite_link,
              'limit'              => limit)
  end
  
  # Returns pending join requests in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link for which to return join requests.
  #   If empty, all join requests will be returned.
  #   Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  # @param query [TD::Types::String] A query to search for in the first names, last names and usernames of the users to
  #   return.
  # @param offset_request [TD::Types::ChatJoinRequest] A chat join request from which to return next requests; pass
  #   null to get results from the beginning.
  # @param limit [Integer] The maximum number of requests to join the chat to return.
  # @return [TD::Types::ChatJoinRequests]
  def get_chat_join_requests(chat_id:, invite_link:, query:, offset_request:, limit:)
    broadcast('@type'          => 'getChatJoinRequests',
              'chat_id'        => chat_id,
              'invite_link'    => invite_link,
              'query'          => query,
              'offset_request' => offset_request,
              'limit'          => limit)
  end
  
  # Returns chat lists to which the chat can be added.
  # This is an offline request.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatLists]
  def get_chat_lists_to_add_chat(chat_id:)
    broadcast('@type'   => 'getChatListsToAddChat',
              'chat_id' => chat_id)
  end
  
  # Returns information about a single member of a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param member_id [TD::Types::MessageSender] Member identifier.
  # @return [TD::Types::ChatMember]
  def get_chat_member(chat_id:, member_id:)
    broadcast('@type'     => 'getChatMember',
              'chat_id'   => chat_id,
              'member_id' => member_id)
  end
  
  # Returns the last message sent in a chat no later than the specified date.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param date [Integer] Point in time (Unix timestamp) relative to which to search for messages.
  # @return [TD::Types::Message]
  def get_chat_message_by_date(chat_id:, date:)
    broadcast('@type'   => 'getChatMessageByDate',
              'chat_id' => chat_id,
              'date'    => date)
  end
  
  # Returns information about the next messages of the specified type in the chat split by days.
  # Returns the results in reverse chronological order.
  # Can return partial result for the last returned day.
  # Behavior of this method depends on the value of the option "utc_time_offset".
  #
  # @param chat_id [Integer] Identifier of the chat in which to return information about messages.
  # @param filter [TD::Types::SearchMessagesFilter] Filter for message content.
  #   Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and
  #   {TD::Types::SearchMessagesFilter::UnreadReaction} are unsupported in this function.
  # @param from_message_id [Integer] The message identifier from which to return information about messages; use 0 to
  #   get results from the last message.
  # @param saved_messages_topic_id [Integer] If not0, only messages in the specified Saved Messages topic will be
  #   considered; pass 0 to consider all messages, or for chats other than Saved Messages.
  # @return [TD::Types::MessageCalendar]
  def get_chat_message_calendar(chat_id:, filter:, from_message_id:, saved_messages_topic_id:)
    broadcast('@type'                   => 'getChatMessageCalendar',
              'chat_id'                 => chat_id,
              'filter'                  => filter,
              'from_message_id'         => from_message_id,
              'saved_messages_topic_id' => saved_messages_topic_id)
  end
  
  # Returns approximate number of messages of the specified type in the chat.
  #
  # @param chat_id [Integer] Identifier of the chat in which to count messages.
  # @param filter [TD::Types::SearchMessagesFilter] Filter for message content;
  #   {TD::Types::SearchMessagesFilter::Empty} is unsupported in this function.
  # @param saved_messages_topic_id [Integer] If not 0, only messages in the specified Saved Messages topic will be
  #   counted; pass 0 to count all messages, or for chats other than Saved Messages.
  # @param return_local [Boolean] Pass true to get the number of messages without sending network requests, or -1 if
  #   the number of messages is unknown locally.
  # @return [TD::Types::Count]
  def get_chat_message_count(chat_id:, filter:, saved_messages_topic_id:, return_local:)
    broadcast('@type'                   => 'getChatMessageCount',
              'chat_id'                 => chat_id,
              'filter'                  => filter,
              'saved_messages_topic_id' => saved_messages_topic_id,
              'return_local'            => return_local)
  end
  
  # Returns approximate 1-based position of a message among messages, which can be found by the specified filter in the
  #   chat.
  # Cannot be used in secret chats.
  #
  # @param chat_id [Integer] Identifier of the chat in which to find message position.
  # @param message_id [Integer] Message identifier.
  # @param filter [TD::Types::SearchMessagesFilter] Filter for message content; searchMessagesFilterEmpty,
  #   searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction, and
  #   {TD::Types::SearchMessagesFilter::FailedToSend} are unsupported in this function.
  # @param message_thread_id [Integer] If not 0, only messages in the specified thread will be considered; supergroups
  #   only.
  # @param saved_messages_topic_id [Integer] If not 0, only messages in the specified Saved Messages topic will be
  #   considered; pass 0 to consider all relevant messages, or for chats other than Saved Messages.
  # @return [TD::Types::Count]
  def get_chat_message_position(chat_id:, message_id:, filter:, message_thread_id:, saved_messages_topic_id:)
    broadcast('@type'                   => 'getChatMessagePosition',
              'chat_id'                 => chat_id,
              'message_id'              => message_id,
              'filter'                  => filter,
              'message_thread_id'       => message_thread_id,
              'saved_messages_topic_id' => saved_messages_topic_id)
  end
  
  # Returns the list of chats with non-default notification settings for new messages.
  #
  # @param scope [TD::Types::NotificationSettingsScope] If specified, only chats from the scope will be returned; pass
  #   null to return chats from all scopes.
  # @param compare_sound [Boolean] Pass true to include in the response chats with only non-default sound.
  # @return [TD::Types::Chats]
  def get_chat_notification_settings_exceptions(scope:, compare_sound:)
    broadcast('@type'         => 'getChatNotificationSettingsExceptions',
              'scope'         => scope,
              'compare_sound' => compare_sound)
  end
  
  # Returns information about a newest pinned message in the chat.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @return [TD::Types::Message]
  def get_chat_pinned_message(chat_id:)
    broadcast('@type'   => 'getChatPinnedMessage',
              'chat_id' => chat_id)
  end
  
  # Returns the list of stories that posted by the given chat to its chat page.
  # If from_story_id == 0, then pinned stories are returned first.
  # Then, stories are returned in reverse chronological order (i.e., in order of decreasing story_id).
  # For optimal performance, the number of returned stories is chosen by TDLib.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param from_story_id [Integer] Identifier of the story starting from which stories must be returned; use 0 to get
  #   results from pinned and the newest story.
  # @param limit [Integer] The maximum number of stories to be returned For optimal performance, the number of returned
  #   stories is chosen by TDLib and can be smaller than the specified limit.
  # @return [TD::Types::Stories]
  def get_chat_posted_to_chat_page_stories(chat_id:, from_story_id:, limit:)
    broadcast('@type'         => 'getChatPostedToChatPageStories',
              'chat_id'       => chat_id,
              'from_story_id' => from_story_id,
              'limit'         => limit)
  end
  
  # Returns detailed revenue statistics about a chat.
  # Currently, this method can be used only for channels if supergroupFullInfo.can_get_revenue_statistics == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_dark [Boolean] Pass true if a dark theme is used by the application.
  # @return [TD::Types::ChatRevenueStatistics]
  def get_chat_revenue_statistics(chat_id:, is_dark:)
    broadcast('@type'   => 'getChatRevenueStatistics',
              'chat_id' => chat_id,
              'is_dark' => is_dark)
  end
  
  # Returns the list of revenue transactions for a chat.
  # Currently, this method can be used only for channels if supergroupFullInfo.can_get_revenue_statistics == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param offset [Integer] Number of transactions to skip.
  # @param limit [Integer] The maximum number of transactions to be returned; up to 200.
  # @return [TD::Types::ChatRevenueTransactions]
  def get_chat_revenue_transactions(chat_id:, offset:, limit:)
    broadcast('@type'   => 'getChatRevenueTransactions',
              'chat_id' => chat_id,
              'offset'  => offset,
              'limit'   => limit)
  end
  
  # Returns a URL for chat revenue withdrawal; requires owner privileges in the chat.
  # Currently, this method can be used only for channels if supergroupFullInfo.can_get_revenue_statistics == true and
  #   getOption("can_withdraw_chat_revenue").
  #
  # @param chat_id [Integer] Chat identifier.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::HttpUrl]
  def get_chat_revenue_withdrawal_url(chat_id:, password:)
    broadcast('@type'    => 'getChatRevenueWithdrawalUrl',
              'chat_id'  => chat_id,
              'password' => password)
  end
  
  # Returns all scheduled messages in a chat.
  # The messages are returned in reverse chronological order (i.e., in order of decreasing message_id).
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Messages]
  def get_chat_scheduled_messages(chat_id:)
    broadcast('@type'   => 'getChatScheduledMessages',
              'chat_id' => chat_id)
  end
  
  # Returns approximate number of chats similar to the given chat.
  #
  # @param chat_id [Integer] Identifier of the target chat; must be an identifier of a channel chat.
  # @param return_local [Boolean] Pass true to get the number of chats without sending network requests, or -1 if the
  #   number of chats is unknown locally.
  # @return [TD::Types::Count]
  def get_chat_similar_chat_count(chat_id:, return_local:)
    broadcast('@type'        => 'getChatSimilarChatCount',
              'chat_id'      => chat_id,
              'return_local' => return_local)
  end
  
  # Returns a list of chats similar to the given chat.
  #
  # @param chat_id [Integer] Identifier of the target chat; must be an identifier of a channel chat.
  # @return [TD::Types::Chats]
  def get_chat_similar_chats(chat_id:)
    broadcast('@type'   => 'getChatSimilarChats',
              'chat_id' => chat_id)
  end
  
  # Returns sparse positions of messages of the specified type in the chat to be used for shared media scroll
  #   implementation.
  # Returns the results in reverse chronological order (i.e., in order of decreasing message_id).
  # Cannot be used in secret chats or with searchMessagesFilterFailedToSend filter without an enabled message database.
  #
  # @param chat_id [Integer] Identifier of the chat in which to return information about message positions.
  # @param filter [TD::Types::SearchMessagesFilter] Filter for message content.
  #   Filters searchMessagesFilterEmpty, searchMessagesFilterMention, searchMessagesFilterUnreadMention, and
  #   {TD::Types::SearchMessagesFilter::UnreadReaction} are unsupported in this function.
  # @param from_message_id [Integer] The message identifier from which to return information about message positions.
  # @param limit [Integer] The expected number of message positions to be returned; 50-2000.
  #   A smaller number of positions can be returned, if there are not enough appropriate messages.
  # @param saved_messages_topic_id [Integer] If not 0, only messages in the specified Saved Messages topic will be
  #   considered; pass 0 to consider all messages, or for chats other than Saved Messages.
  # @return [TD::Types::MessagePositions]
  def get_chat_sparse_message_positions(chat_id:, filter:, from_message_id:, limit:, saved_messages_topic_id:)
    broadcast('@type'                   => 'getChatSparseMessagePositions',
              'chat_id'                 => chat_id,
              'filter'                  => filter,
              'from_message_id'         => from_message_id,
              'limit'                   => limit,
              'saved_messages_topic_id' => saved_messages_topic_id)
  end
  
  # Returns sponsored messages to be shown in a chat; for channel chats only.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @return [TD::Types::SponsoredMessages]
  def get_chat_sponsored_messages(chat_id:)
    broadcast('@type'   => 'getChatSponsoredMessages',
              'chat_id' => chat_id)
  end
  
  # Returns detailed statistics about a chat.
  # Currently, this method can be used only for supergroups and channels.
  # Can be used only if supergroupFullInfo.can_get_statistics == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_dark [Boolean] Pass true if a dark theme is used by the application.
  # @return [TD::Types::ChatStatistics]
  def get_chat_statistics(chat_id:, is_dark:)
    broadcast('@type'   => 'getChatStatistics',
              'chat_id' => chat_id,
              'is_dark' => is_dark)
  end
  
  # Returns interactions with a story posted in a chat.
  # Can be used only if story is posted on behalf of a chat and the user is an administrator in the chat.
  #
  # @param story_sender_chat_id [Integer] The identifier of the sender of the story.
  # @param story_id [Integer] Story identifier.
  # @param reaction_type [TD::Types::ReactionType] Pass the default heart reaction or a suggested reaction type to
  #   receive only interactions with the specified reaction type; pass null to receive all interactions;
  #   {TD::Types::ReactionType::Paid} isn't supported.
  # @param prefer_forwards [Boolean] Pass true to get forwards and reposts first, then reactions, then other views;
  #   pass false to get interactions sorted just by interaction date.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of story interactions to return.
  # @return [TD::Types::StoryInteractions]
  def get_chat_story_interactions(story_sender_chat_id:, story_id:, reaction_type:, prefer_forwards:, offset:, limit:)
    broadcast('@type'                => 'getChatStoryInteractions',
              'story_sender_chat_id' => story_sender_chat_id,
              'story_id'             => story_id,
              'reaction_type'        => reaction_type,
              'prefer_forwards'      => prefer_forwards,
              'offset'               => offset,
              'limit'                => limit)
  end
  
  # Returns an ordered list of chats from the beginning of a chat list.
  # For informational purposes only.
  # Use loadChats and updates processing instead to maintain chat lists in a consistent state.
  #
  # @param chat_list [TD::Types::ChatList] The chat list in which to return chats; pass null to get chats from the main
  #   chat list.
  # @param limit [Integer] The maximum number of chats to be returned.
  # @return [TD::Types::Chats]
  def get_chats(chat_list:, limit:)
    broadcast('@type'     => 'getChats',
              'chat_list' => chat_list,
              'limit'     => limit)
  end
  
  # Returns identifiers of chats from a chat folder, suitable for adding to a chat folder invite link.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @return [TD::Types::Chats]
  def get_chats_for_chat_folder_invite_link(chat_folder_id:)
    broadcast('@type'          => 'getChatsForChatFolderInviteLink',
              'chat_folder_id' => chat_folder_id)
  end
  
  # Returns supergroup and channel chats in which the current user has the right to post stories.
  # The chats must be rechecked with canSendStory before actually trying to post a story there.
  #
  # @return [TD::Types::Chats]
  def get_chats_to_send_stories
    broadcast('@type' => 'getChatsToSendStories')
  end
  
  # Returns all close friends of the current user.
  #
  # @return [TD::Types::Users]
  def get_close_friends
    broadcast('@type' => 'getCloseFriends')
  end
  
  # Returns information about a given collectible item that was purchased at https://fragment.com.
  #
  # @param type [TD::Types::CollectibleItemType] Type of the collectible item.
  #   The item must be used by a user and must be visible to the current user.
  # @return [TD::Types::CollectibleItemInfo]
  def get_collectible_item_info(type:)
    broadcast('@type' => 'getCollectibleItemInfo',
              'type'  => type)
  end
  
  # Returns the list of commands supported by the bot for the given user scope and language; for bots only.
  #
  # @param scope [TD::Types::BotCommandScope] The scope to which the commands are relevant; pass null to get commands
  #   in the default bot command scope.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code or an empty string.
  # @return [TD::Types::BotCommands]
  def get_commands(scope:, language_code:)
    broadcast('@type'         => 'getCommands',
              'scope'         => scope,
              'language_code' => language_code)
  end
  
  # Returns all website where the current user used Telegram to log in.
  #
  # @return [TD::Types::ConnectedWebsites]
  def get_connected_websites
    broadcast('@type' => 'getConnectedWebsites')
  end
  
  # Returns all contacts of the user.
  #
  # @return [TD::Types::Users]
  def get_contacts
    broadcast('@type' => 'getContacts')
  end
  
  # Returns information about existing countries.
  # Can be called before authorization.
  #
  # @return [TD::Types::Countries]
  def get_countries
    broadcast('@type' => 'getCountries')
  end
  
  # Uses the current IP address to find the current country.
  # Returns two-letter ISO 3166-1 alpha-2 country code.
  # Can be called before authorization.
  #
  # @return [TD::Types::Text]
  def get_country_code
    broadcast('@type' => 'getCountryCode')
  end
  
  # Returns an emoji for the given country.
  # Returns an empty string on failure.
  # Can be called synchronously.
  #
  # @param country_code [TD::Types::String] A two-letter ISO 3166-1 alpha-2 country code as received from getCountries.
  # @return [TD::Types::Text]
  def get_country_flag_emoji(country_code:)
    broadcast('@type'        => 'getCountryFlagEmoji',
              'country_code' => country_code)
  end
  
  # Returns a list of public chats of the specified type, owned by the user.
  #
  # @param type [TD::Types::PublicChatType] Type of the public chats to return.
  # @return [TD::Types::Chats]
  def get_created_public_chats(type:)
    broadcast('@type' => 'getCreatedPublicChats',
              'type'  => type)
  end
  
  # Returns all updates needed to restore current TDLib state, i.e.
  # all actual updateAuthorizationState/updateUser/updateNewChat and others.
  # This is especially useful if TDLib is run in a separate process.
  # Can be called before initialization.
  #
  # @return [TD::Types::Updates]
  def get_current_state
    broadcast('@type' => 'getCurrentState')
  end
  
  # Returns the current weather in the given location.
  #
  # @param location [TD::Types::Location] The location.
  # @return [TD::Types::CurrentWeather]
  def get_current_weather(location:)
    broadcast('@type'    => 'getCurrentWeather',
              'location' => location)
  end
  
  # Returns TGS stickers with generic animations for custom emoji reactions.
  #
  # @return [TD::Types::Stickers]
  def get_custom_emoji_reaction_animations
    broadcast('@type' => 'getCustomEmojiReactionAnimations')
  end
  
  # Returns the list of custom emoji stickers by their identifiers.
  # Stickers are returned in arbitrary order.
  # Only found stickers are returned.
  #
  # @param custom_emoji_ids [Array<Integer>] Identifiers of custom emoji stickers.
  #   At most 200 custom emoji stickers can be received simultaneously.
  # @return [TD::Types::Stickers]
  def get_custom_emoji_stickers(custom_emoji_ids:)
    broadcast('@type'            => 'getCustomEmojiStickers',
              'custom_emoji_ids' => custom_emoji_ids)
  end
  
  # Returns database statistics.
  #
  # @return [TD::Types::DatabaseStatistics]
  def get_database_statistics
    broadcast('@type' => 'getDatabaseStatistics')
  end
  
  # Returns information about a tg:// deep link.
  # Use "tg://need_update_for_some_feature" or "tg:some_unsupported_feature" for testing.
  # Returns a 404 error for unknown links.
  # Can be called before authorization.
  #
  # @param link [TD::Types::String] The link.
  # @return [TD::Types::DeepLinkInfo]
  def get_deep_link_info(link:)
    broadcast('@type' => 'getDeepLinkInfo',
              'link'  => link)
  end
  
  # Returns default list of custom emoji stickers for reply background.
  #
  # @return [TD::Types::Stickers]
  def get_default_background_custom_emoji_stickers
    broadcast('@type' => 'getDefaultBackgroundCustomEmojiStickers')
  end
  
  # Returns default emoji statuses for chats.
  #
  # @return [TD::Types::EmojiStatuses]
  def get_default_chat_emoji_statuses
    broadcast('@type' => 'getDefaultChatEmojiStatuses')
  end
  
  # Returns default list of custom emoji stickers for placing on a chat photo.
  #
  # @return [TD::Types::Stickers]
  def get_default_chat_photo_custom_emoji_stickers
    broadcast('@type' => 'getDefaultChatPhotoCustomEmojiStickers')
  end
  
  # Returns default emoji statuses for self status.
  #
  # @return [TD::Types::EmojiStatuses]
  def get_default_emoji_statuses
    broadcast('@type' => 'getDefaultEmojiStatuses')
  end
  
  # Returns default message auto-delete time setting for new chats.
  #
  # @return [TD::Types::MessageAutoDeleteTime]
  def get_default_message_auto_delete_time
    broadcast('@type' => 'getDefaultMessageAutoDeleteTime')
  end
  
  # Returns default list of custom emoji stickers for placing on a profile photo.
  #
  # @return [TD::Types::Stickers]
  def get_default_profile_photo_custom_emoji_stickers
    broadcast('@type' => 'getDefaultProfilePhotoCustomEmojiStickers')
  end
  
  # Returns the list of emoji statuses, which can't be used as chat emoji status, even they are from a sticker set with
  #   is_allowed_as_chat_emoji_status == true.
  #
  # @return [TD::Types::EmojiStatuses]
  def get_disallowed_chat_emoji_statuses
    broadcast('@type' => 'getDisallowedChatEmojiStatuses')
  end
  
  # Returns available emoji categories.
  #
  # @param type [TD::Types::EmojiCategoryType] Type of emoji categories to return; pass null to get default emoji
  #   categories.
  # @return [TD::Types::EmojiCategories]
  def get_emoji_categories(type:)
    broadcast('@type' => 'getEmojiCategories',
              'type'  => type)
  end
  
  # Returns information about an emoji reaction.
  # Returns a 404 error if the reaction is not found.
  #
  # @param emoji [TD::Types::String] Text representation of the reaction.
  # @return [TD::Types::EmojiReaction]
  def get_emoji_reaction(emoji:)
    broadcast('@type' => 'getEmojiReaction',
              'emoji' => emoji)
  end
  
  # Returns an HTTP URL which can be used to automatically log in to the translation platform and suggest new emoji
  #   replacements.
  # The URL will be valid for 30 seconds after generation.
  #
  # @param language_code [TD::Types::String] Language code for which the emoji replacements will be suggested.
  # @return [TD::Types::HttpUrl]
  def get_emoji_suggestions_url(language_code:)
    broadcast('@type'         => 'getEmojiSuggestionsUrl',
              'language_code' => language_code)
  end
  
  # Returns an HTTP URL which can be used to automatically authorize the current user on a website after clicking an
  #   HTTP link.
  # Use the method getExternalLinkInfo to find whether a prior user confirmation is needed.
  #
  # @param link [TD::Types::String] The HTTP link.
  # @param allow_write_access [Boolean] Pass true if the current user allowed the bot, returned in getExternalLinkInfo,
  #   to send them messages.
  # @return [TD::Types::HttpUrl]
  def get_external_link(link:, allow_write_access:)
    broadcast('@type'              => 'getExternalLink',
              'link'               => link,
              'allow_write_access' => allow_write_access)
  end
  
  # Returns information about an action to be done when the current user clicks an external link.
  # Don't use this method for links from secret chats if link preview is disabled in secret chats.
  #
  # @param link [TD::Types::String] The link.
  # @return [TD::Types::LoginUrlInfo]
  def get_external_link_info(link:)
    broadcast('@type' => 'getExternalLinkInfo',
              'link'  => link)
  end
  
  # Returns favorite stickers.
  #
  # @return [TD::Types::Stickers]
  def get_favorite_stickers
    broadcast('@type' => 'getFavoriteStickers')
  end
  
  # Returns information about a file; this is an offline request.
  #
  # @param file_id [Integer] Identifier of the file to get.
  # @return [TD::Types::File]
  def get_file(file_id:)
    broadcast('@type'   => 'getFile',
              'file_id' => file_id)
  end
  
  # Returns file downloaded prefix size from a given offset, in bytes.
  #
  # @param file_id [Integer] Identifier of the file.
  # @param offset [Integer] Offset from which downloaded prefix size needs to be calculated.
  # @return [TD::Types::FileDownloadedPrefixSize]
  def get_file_downloaded_prefix_size(file_id:, offset:)
    broadcast('@type'   => 'getFileDownloadedPrefixSize',
              'file_id' => file_id,
              'offset'  => offset)
  end
  
  # Returns the extension of a file, guessed by its MIME type.
  # Returns an empty string on failure.
  # Can be called synchronously.
  #
  # @param mime_type [TD::Types::String] The MIME type of the file.
  # @return [TD::Types::Text]
  def get_file_extension(mime_type:)
    broadcast('@type'     => 'getFileExtension',
              'mime_type' => mime_type)
  end
  
  # Returns the MIME type of a file, guessed by its extension.
  # Returns an empty string on failure.
  # Can be called synchronously.
  #
  # @param file_name [TD::Types::String] The name of the file or path to the file.
  # @return [TD::Types::Text]
  def get_file_mime_type(file_name:)
    broadcast('@type'     => 'getFileMimeType',
              'file_name' => file_name)
  end
  
  # Returns information about a forum topic.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @return [TD::Types::ForumTopic]
  def get_forum_topic(chat_id:, message_thread_id:)
    broadcast('@type'             => 'getForumTopic',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Returns the list of custom emoji, which can be used as forum topic icon by all users.
  #
  # @return [TD::Types::Stickers]
  def get_forum_topic_default_icons
    broadcast('@type' => 'getForumTopicDefaultIcons')
  end
  
  # Returns an HTTPS link to a topic in a forum chat.
  # This is an offline request.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @return [TD::Types::MessageLink]
  def get_forum_topic_link(chat_id:, message_thread_id:)
    broadcast('@type'             => 'getForumTopicLink',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Returns found forum topics in a forum chat.
  # This is a temporary method for getting information about topic list from the server.
  #
  # @param chat_id [Integer] Identifier of the forum chat.
  # @param query [TD::Types::String] Query to search for in the forum topic's name.
  # @param offset_date [Integer] The date starting from which the results need to be fetched.
  #   Use 0 or any date in the future to get results from the last topic.
  # @param offset_message_id [Integer] The message identifier of the last message in the last found topic, or 0 for the
  #   first request.
  # @param offset_message_thread_id [Integer] The message thread identifier of the last found topic, or 0 for the first
  #   request.
  # @param limit [Integer] The maximum number of forum topics to be returned; up to 100.
  #   For optimal performance, the number of returned forum topics is chosen by TDLib and can be smaller than the
  #   specified limit.
  # @return [TD::Types::ForumTopics]
  def get_forum_topics(chat_id:, query:, offset_date:, offset_message_id:, offset_message_thread_id:, limit:)
    broadcast('@type'                    => 'getForumTopics',
              'chat_id'                  => chat_id,
              'query'                    => query,
              'offset_date'              => offset_date,
              'offset_message_id'        => offset_message_id,
              'offset_message_thread_id' => offset_message_thread_id,
              'limit'                    => limit)
  end
  
  # Returns the high scores for a game and some part of the high score table in the range of the specified user; for
  #   bots only.
  #
  # @param chat_id [Integer] The chat that contains the message with the game.
  # @param message_id [Integer] Identifier of the message.
  # @param user_id [Integer] User identifier.
  # @return [TD::Types::GameHighScores]
  def get_game_high_scores(chat_id:, message_id:, user_id:)
    broadcast('@type'      => 'getGameHighScores',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'user_id'    => user_id)
  end
  
  # Returns greeting stickers from regular sticker sets that can be used for the start page of other users.
  #
  # @return [TD::Types::Stickers]
  def get_greeting_stickers
    broadcast('@type' => 'getGreetingStickers')
  end
  
  # Returns information about a group call.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::GroupCall]
  def get_group_call(group_call_id:)
    broadcast('@type'         => 'getGroupCall',
              'group_call_id' => group_call_id)
  end
  
  # Returns invite link to a video chat in a public chat.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param can_self_unmute [Boolean] Pass true if the invite link needs to contain an invite hash, passing which to
  #   joinGroupCall would allow the invited user to unmute themselves.
  #   Requires groupCall.can_be_managed group call flag.
  # @return [TD::Types::HttpUrl]
  def get_group_call_invite_link(group_call_id:, can_self_unmute:)
    broadcast('@type'           => 'getGroupCallInviteLink',
              'group_call_id'   => group_call_id,
              'can_self_unmute' => can_self_unmute)
  end
  
  # Returns a file with a segment of a group call stream in a modified OGG format for audio or MPEG-4 format for video.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param time_offset [Integer] Point in time when the stream segment begins; Unix timestamp in milliseconds.
  # @param scale [Integer] Segment duration scale; 0-1.
  #   Segment's duration is 1000/(2**scale) milliseconds.
  # @param channel_id [Integer] Identifier of an audio/video channel to get as received from tgcalls.
  # @param video_quality [TD::Types::GroupCallVideoQuality] Video quality as received from tgcalls; pass null to get
  #   the worst available quality.
  # @return [TD::Types::FilePart]
  def get_group_call_stream_segment(group_call_id:, time_offset:, scale:, channel_id:, video_quality:)
    broadcast('@type'         => 'getGroupCallStreamSegment',
              'group_call_id' => group_call_id,
              'time_offset'   => time_offset,
              'scale'         => scale,
              'channel_id'    => channel_id,
              'video_quality' => video_quality)
  end
  
  # Returns information about available group call streams.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::GroupCallStreams]
  def get_group_call_streams(group_call_id:)
    broadcast('@type'         => 'getGroupCallStreams',
              'group_call_id' => group_call_id)
  end
  
  # Returns a list of common group chats with a given user.
  # Chats are sorted by their type and creation date.
  #
  # @param user_id [Integer] User identifier.
  # @param offset_chat_id [Integer] Chat identifier starting from which to return chats; use 0 for the first request.
  # @param limit [Integer] The maximum number of chats to be returned; up to 100.
  # @return [TD::Types::Chats]
  def get_groups_in_common(user_id:, offset_chat_id:, limit:)
    broadcast('@type'          => 'getGroupsInCommon',
              'user_id'        => user_id,
              'offset_chat_id' => offset_chat_id,
              'limit'          => limit)
  end
  
  # Returns the total number of imported contacts.
  #
  # @return [TD::Types::Count]
  def get_imported_contact_count
    broadcast('@type' => 'getImportedContactCount')
  end
  
  # Returns a list of recently inactive supergroups and channels.
  # Can be used when user reaches limit on the number of joined supergroups and channels and receives CHANNELS_TOO_MUCH
  #   error.
  # Also, the limit can be increased with Telegram Premium.
  #
  # @return [TD::Types::Chats]
  def get_inactive_supergroup_chats
    broadcast('@type' => 'getInactiveSupergroupChats')
  end
  
  # Returns game high scores and some part of the high score table in the range of the specified user; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param user_id [Integer] User identifier.
  # @return [TD::Types::GameHighScores]
  def get_inline_game_high_scores(inline_message_id:, user_id:)
    broadcast('@type'             => 'getInlineGameHighScores',
              'inline_message_id' => inline_message_id,
              'user_id'           => user_id)
  end
  
  # Sends an inline query to a bot and returns its results.
  # Returns an error with code 502 if the bot fails to answer the query before the query timeout expires.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param chat_id [Integer] Identifier of the chat where the query was sent.
  # @param user_location [TD::Types::Location] Location of the user; pass null if unknown or the bot doesn't need
  #   user's location.
  # @param query [TD::Types::String] Text of the query.
  # @param offset [TD::Types::String] Offset of the first entry to return; use empty string to get the first chunk of
  #   results.
  # @return [TD::Types::InlineQueryResults]
  def get_inline_query_results(bot_user_id:, chat_id:, user_location:, query:, offset:)
    broadcast('@type'         => 'getInlineQueryResults',
              'bot_user_id'   => bot_user_id,
              'chat_id'       => chat_id,
              'user_location' => user_location,
              'query'         => query,
              'offset'        => offset)
  end
  
  # Returns backgrounds installed by the user.
  #
  # @param for_dark_theme [Boolean] Pass true to order returned backgrounds for a dark theme.
  # @return [TD::Types::Backgrounds]
  def get_installed_backgrounds(for_dark_theme:)
    broadcast('@type'          => 'getInstalledBackgrounds',
              'for_dark_theme' => for_dark_theme)
  end
  
  # Returns a list of installed sticker sets.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to return.
  # @return [TD::Types::StickerSets]
  def get_installed_sticker_sets(sticker_type:)
    broadcast('@type'        => 'getInstalledStickerSets',
              'sticker_type' => sticker_type)
  end
  
  # Returns an HTTPS or a tg: link with the given type.
  # Can be called before authorization.
  #
  # @param type [TD::Types::InternalLinkType] Expected type of the link.
  # @param is_http [Boolean] Pass true to create an HTTPS link (only available for some link types); pass false to
  #   create a tg: link.
  # @return [TD::Types::HttpUrl]
  def get_internal_link(type:, is_http:)
    broadcast('@type'   => 'getInternalLink',
              'type'    => type,
              'is_http' => is_http)
  end
  
  # Returns information about the type of internal link.
  # Returns a 404 error if the link is not internal.
  # Can be called before authorization.
  #
  # @param link [TD::Types::String] The link.
  # @return [TD::Types::InternalLinkType]
  def get_internal_link_type(link:)
    broadcast('@type' => 'getInternalLinkType',
              'link'  => link)
  end
  
  # Converts a JsonValue object to corresponding JSON-serialized string.
  # Can be called synchronously.
  #
  # @param json_value [TD::Types::JsonValue] The {TD::Types::JsonValue} object.
  # @return [TD::Types::Text]
  def get_json_string(json_value:)
    broadcast('@type'      => 'getJsonString',
              'json_value' => json_value)
  end
  
  # Converts a JSON-serialized string to corresponding JsonValue object.
  # Can be called synchronously.
  #
  # @param json [TD::Types::String] The JSON-serialized string.
  # @return [TD::Types::JsonValue]
  def get_json_value(json:)
    broadcast('@type' => 'getJsonValue',
              'json'  => json)
  end
  
  # Return emojis matching the keyword.
  # Supported only if the file database is enabled.
  # Order of results is unspecified.
  #
  # @param text [TD::Types::String] Text to search for.
  # @param input_language_codes [Array<TD::Types::String>, nil] List of possible IETF language tags of the user's input
  #   language; may be empty if unknown.
  # @return [TD::Types::Emojis]
  def get_keyword_emojis(text:, input_language_codes: nil)
    broadcast('@type'                => 'getKeywordEmojis',
              'text'                 => text,
              'input_language_codes' => input_language_codes)
  end
  
  # Returns information about a language pack.
  # Returned language pack identifier may be different from a provided one.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Language pack identifier.
  # @return [TD::Types::LanguagePackInfo]
  def get_language_pack_info(language_pack_id:)
    broadcast('@type'            => 'getLanguagePackInfo',
              'language_pack_id' => language_pack_id)
  end
  
  # Returns a string stored in the local database from the specified localization target and language pack by its key.
  # Returns a 404 error if the string is not found.
  # Can be called synchronously.
  #
  # @param language_pack_database_path [TD::Types::String] Path to the language pack database in which strings are
  #   stored.
  # @param localization_target [TD::Types::String] Localization target to which the language pack belongs.
  # @param language_pack_id [TD::Types::String] Language pack identifier.
  # @param key [TD::Types::String] Language pack key of the string to be returned.
  # @return [TD::Types::LanguagePackStringValue]
  def get_language_pack_string(language_pack_database_path:, localization_target:, language_pack_id:, key:)
    broadcast('@type'                       => 'getLanguagePackString',
              'language_pack_database_path' => language_pack_database_path,
              'localization_target'         => localization_target,
              'language_pack_id'            => language_pack_id,
              'key'                         => key)
  end
  
  # Returns strings from a language pack in the current localization target by their keys.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Language pack identifier of the strings to be returned.
  # @param keys [Array<TD::Types::String>] Language pack keys of the strings to be returned; leave empty to request all
  #   available strings.
  # @return [TD::Types::LanguagePackStrings]
  def get_language_pack_strings(language_pack_id:, keys:)
    broadcast('@type'            => 'getLanguagePackStrings',
              'language_pack_id' => language_pack_id,
              'keys'             => keys)
  end
  
  # Returns a link preview by the text of a message.
  # Do not call this function too often.
  # Returns a 404 error if the text has no link preview.
  #
  # @param text [TD::Types::FormattedText] Message text with formatting.
  # @param link_preview_options [TD::Types::LinkPreviewOptions] Options to be used for generation of the link preview;
  #   pass null to use default link preview options.
  # @return [TD::Types::LinkPreview]
  def get_link_preview(text:, link_preview_options:)
    broadcast('@type'                => 'getLinkPreview',
              'text'                 => text,
              'link_preview_options' => link_preview_options)
  end
  
  # Returns information about the current localization target.
  # This is an offline request if only_local is true.
  # Can be called before authorization.
  #
  # @param only_local [Boolean] Pass true to get only locally available information without sending network requests.
  # @return [TD::Types::LocalizationTargetInfo]
  def get_localization_target_info(only_local:)
    broadcast('@type'      => 'getLocalizationTargetInfo',
              'only_local' => only_local)
  end
  
  # Returns information about currently used log stream for internal logging of TDLib.
  # Can be called synchronously.
  #
  # @return [TD::Types::LogStream]
  def get_log_stream
    broadcast('@type' => 'getLogStream')
  end
  
  # Returns current verbosity level for a specified TDLib internal log tag.
  # Can be called synchronously.
  #
  # @param tag [TD::Types::String] Logging tag to change verbosity level.
  # @return [TD::Types::LogVerbosityLevel]
  def get_log_tag_verbosity_level(tag:)
    broadcast('@type' => 'getLogTagVerbosityLevel',
              'tag'   => tag)
  end
  
  # Returns the list of available TDLib internal log tags, for example, ["actor", "binlog", "connections",
  #   "notifications", "proxy"].
  # Can be called synchronously.
  #
  # @return [TD::Types::LogTags]
  def get_log_tags
    broadcast('@type' => 'getLogTags')
  end
  
  # Returns current verbosity level of the internal logging of TDLib.
  # Can be called synchronously.
  #
  # @return [TD::Types::LogVerbosityLevel]
  def get_log_verbosity_level
    broadcast('@type' => 'getLogVerbosityLevel')
  end
  
  # Returns an HTTP URL which can be used to automatically authorize the user on a website after clicking an inline
  #   button of type inlineKeyboardButtonTypeLoginUrl.
  # Use the method getLoginUrlInfo to find whether a prior user confirmation is needed.
  # If an error is returned, then the button must be handled as an ordinary URL button.
  #
  # @param chat_id [Integer] Chat identifier of the message with the button.
  # @param message_id [Integer] Message identifier of the message with the button.
  # @param button_id [Integer] Button identifier.
  # @param allow_write_access [Boolean] Pass true to allow the bot to send messages to the current user.
  # @return [TD::Types::HttpUrl]
  def get_login_url(chat_id:, message_id:, button_id:, allow_write_access:)
    broadcast('@type'              => 'getLoginUrl',
              'chat_id'            => chat_id,
              'message_id'         => message_id,
              'button_id'          => button_id,
              'allow_write_access' => allow_write_access)
  end
  
  # Returns information about a button of type inlineKeyboardButtonTypeLoginUrl.
  # The method needs to be called when the user presses the button.
  #
  # @param chat_id [Integer] Chat identifier of the message with the button.
  # @param message_id [Integer] Message identifier of the message with the button.
  #   The message must not be scheduled.
  # @param button_id [Integer] Button identifier.
  # @return [TD::Types::LoginUrlInfo]
  def get_login_url_info(chat_id:, message_id:, button_id:)
    broadcast('@type'      => 'getLoginUrlInfo',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'button_id'  => button_id)
  end
  
  # Returns information needed to open the main Web App of a bot.
  #
  # @param chat_id [Integer] Identifier of the chat in which the Web App is opened; pass 0 if none.
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param start_parameter [TD::Types::String] Start parameter from internalLinkTypeMainWebApp.
  # @param theme [TD::Types::ThemeParameters] Preferred Web App theme; pass null to use the default theme.
  # @param application_name [TD::Types::String] Short name of the current application; 0-64 English letters, digits,
  #   and underscores.
  # @return [TD::Types::MainWebApp]
  def get_main_web_app(chat_id:, bot_user_id:, start_parameter:, theme:, application_name:)
    broadcast('@type'            => 'getMainWebApp',
              'chat_id'          => chat_id,
              'bot_user_id'      => bot_user_id,
              'start_parameter'  => start_parameter,
              'theme'            => theme,
              'application_name' => application_name)
  end
  
  # Returns information about a file with a map thumbnail in PNG format.
  # Only map thumbnail files with size less than 1MB can be downloaded.
  #
  # @param location [TD::Types::Location] Location of the map center.
  # @param zoom [Integer] Map zoom level; 13-20.
  # @param width [Integer] Map width in pixels before applying scale; 16-1024.
  # @param height [Integer] Map height in pixels before applying scale; 16-1024.
  # @param scale [Integer] Map scale; 1-3.
  # @param chat_id [Integer] Identifier of a chat in which the thumbnail will be shown.
  #   Use 0 if unknown.
  # @return [TD::Types::File]
  def get_map_thumbnail_file(location:, zoom:, width:, height:, scale:, chat_id:)
    broadcast('@type'    => 'getMapThumbnailFile',
              'location' => location,
              'zoom'     => zoom,
              'width'    => width,
              'height'   => height,
              'scale'    => scale,
              'chat_id'  => chat_id)
  end
  
  # Replaces text entities with Markdown formatting in a human-friendly format.
  # Entities that can't be represented in Markdown unambiguously are kept as is.
  # Can be called synchronously.
  #
  # @param text [TD::Types::FormattedText] The text.
  # @return [TD::Types::FormattedText]
  def get_markdown_text(text:)
    broadcast('@type' => 'getMarkdownText',
              'text'  => text)
  end
  
  # Returns the current user.
  #
  # @return [TD::Types::User]
  def get_me
    broadcast('@type' => 'getMe')
  end
  
  # Returns menu button set by the bot for the given user; for bots only.
  #
  # @param user_id [Integer] Identifier of the user or 0 to get the default menu button.
  # @return [TD::Types::BotMenuButton]
  def get_menu_button(user_id:)
    broadcast('@type'   => 'getMenuButton',
              'user_id' => user_id)
  end
  
  # Returns information about a message.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @param message_id [Integer] Identifier of the message to get.
  # @return [TD::Types::Message]
  def get_message(chat_id:, message_id:)
    broadcast('@type'      => 'getMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns reactions added for a message, along with their sender.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  #   Use message.interaction_info.reactions.can_get_added_reactions to check whether added reactions can be received
  #   for the message.
  # @param reaction_type [TD::Types::ReactionType] Type of the reactions to return; pass null to return all added
  #   reactions; {TD::Types::ReactionType::Paid} isn't supported.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of reactions to be returned; must be positive and can't be greater than
  #   100.
  # @return [TD::Types::AddedReactions]
  def get_message_added_reactions(chat_id:, message_id:, reaction_type:, offset:, limit:)
    broadcast('@type'         => 'getMessageAddedReactions',
              'chat_id'       => chat_id,
              'message_id'    => message_id,
              'reaction_type' => reaction_type,
              'offset'        => offset,
              'limit'         => limit)
  end
  
  # Returns reactions, which can be added to a message.
  # The list can change after updateActiveEmojiReactions, updateChatAvailableReactions for the chat, or
  #   updateMessageInteractionInfo for the message.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param row_size [Integer] Number of reaction per row, 5-25.
  # @return [TD::Types::AvailableReactions]
  def get_message_available_reactions(chat_id:, message_id:, row_size:)
    broadcast('@type'      => 'getMessageAvailableReactions',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'row_size'   => row_size)
  end
  
  # Returns information about a message effect.
  # Returns a 404 error if the effect is not found.
  #
  # @param effect_id [Integer] Unique identifier of the effect.
  # @return [TD::Types::MessageEffect]
  def get_message_effect(effect_id:)
    broadcast('@type'     => 'getMessageEffect',
              'effect_id' => effect_id)
  end
  
  # Returns an HTML code for embedding the message.
  # Available only if messageProperties.can_get_embedding_code.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param for_album [Boolean] Pass true to return an HTML code for embedding of the whole media album.
  # @return [TD::Types::Text]
  def get_message_embedding_code(chat_id:, message_id:, for_album:)
    broadcast('@type'      => 'getMessageEmbeddingCode',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'for_album'  => for_album)
  end
  
  # Returns information about a file with messages exported from another application.
  #
  # @param message_file_head [TD::Types::String] Beginning of the message file; up to 100 first lines.
  # @return [TD::Types::MessageFileType]
  def get_message_file_type(message_file_head:)
    broadcast('@type'             => 'getMessageFileType',
              'message_file_head' => message_file_head)
  end
  
  # Returns a confirmation text to be shown to the user before starting message import.
  #
  # @param chat_id [Integer] Identifier of a chat to which the messages will be imported.
  #   It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with
  #   can_change_info member right.
  # @return [TD::Types::Text]
  def get_message_import_confirmation_text(chat_id:)
    broadcast('@type'   => 'getMessageImportConfirmationText',
              'chat_id' => chat_id)
  end
  
  # Returns an HTTPS link to a message in a chat.
  # Available only if messageProperties.can_get_link, or if messageProperties.can_get_media_timestamp_links and a media
  #   timestamp link is generated.
  # This is an offline request.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param media_timestamp [Integer] If not 0, timestamp from which the video/audio/video note/voice note/story playing
  #   must start, in seconds.
  #   The media can be in the message content or in its link preview.
  # @param for_album [Boolean] Pass true to create a link for the whole media album.
  # @param in_message_thread [Boolean] Pass true to create a link to the message as a channel post comment, in a
  #   message thread, or a forum topic.
  # @return [TD::Types::MessageLink]
  def get_message_link(chat_id:, message_id:, media_timestamp:, for_album:, in_message_thread:)
    broadcast('@type'             => 'getMessageLink',
              'chat_id'           => chat_id,
              'message_id'        => message_id,
              'media_timestamp'   => media_timestamp,
              'for_album'         => for_album,
              'in_message_thread' => in_message_thread)
  end
  
  # Returns information about a public or private message link.
  # Can be called for any internal link of the type internalLinkTypeMessage.
  #
  # @param url [TD::Types::String] The message link.
  # @return [TD::Types::MessageLinkInfo]
  def get_message_link_info(url:)
    broadcast('@type' => 'getMessageLinkInfo',
              'url'   => url)
  end
  
  # Returns information about a message, if it is available without sending network request.
  # This is an offline request.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @param message_id [Integer] Identifier of the message to get.
  # @return [TD::Types::Message]
  def get_message_locally(chat_id:, message_id:)
    broadcast('@type'      => 'getMessageLocally',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns properties of a message; this is an offline request.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Identifier of the message.
  # @return [TD::Types::MessageProperties]
  def get_message_properties(chat_id:, message_id:)
    broadcast('@type'      => 'getMessageProperties',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns forwarded copies of a channel message to different public channels and public reposts as a story.
  # Can be used only if messageProperties.can_get_statistics == true.
  # For optimal performance, the number of returned messages and stories is chosen by TDLib.
  #
  # @param chat_id [Integer] Chat identifier of the message.
  # @param message_id [Integer] Message identifier.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of messages and stories to be returned; must be positive and can't be
  #   greater than 100.
  #   For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::PublicForwards]
  def get_message_public_forwards(chat_id:, message_id:, offset:, limit:)
    broadcast('@type'      => 'getMessagePublicForwards',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'offset'     => offset,
              'limit'      => limit)
  end
  
  # Returns read date of a recent outgoing message in a private chat.
  # The method can be called if messageProperties.can_get_read_date == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Identifier of the message.
  # @return [TD::Types::MessageReadDate]
  def get_message_read_date(chat_id:, message_id:)
    broadcast('@type'      => 'getMessageReadDate',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns detailed statistics about a message.
  # Can be used only if messageProperties.can_get_statistics == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Message identifier.
  # @param is_dark [Boolean] Pass true if a dark theme is used by the application.
  # @return [TD::Types::MessageStatistics]
  def get_message_statistics(chat_id:, message_id:, is_dark:)
    broadcast('@type'      => 'getMessageStatistics',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'is_dark'    => is_dark)
  end
  
  # Returns information about a message thread.
  # Can be used only if messageProperties.can_get_message_thread == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Identifier of the message.
  # @return [TD::Types::MessageThreadInfo]
  def get_message_thread(chat_id:, message_id:)
    broadcast('@type'      => 'getMessageThread',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns messages in a message thread of a message.
  # Can be used only if messageProperties.can_get_message_thread == true.
  # Message thread of a channel message is in the channel's linked supergroup.
  # The messages are returned in reverse chronological order (i.e., in order of decreasing message_id).
  # For optimal performance, the number of returned messages is chosen by TDLib.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Message identifier, which thread history needs to be returned.
  # @param from_message_id [Integer] Identifier of the message starting from which history must be fetched; use 0 to
  #   get results from the last message.
  # @param offset [Integer] Specify 0 to get results from exactly the message from_message_id or a negative offset up
  #   to 99 to get additionally some newer messages.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   If the offset is negative, the limit must be greater than or equal to -offset.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::Messages]
  def get_message_thread_history(chat_id:, message_id:, from_message_id:, offset:, limit:)
    broadcast('@type'           => 'getMessageThreadHistory',
              'chat_id'         => chat_id,
              'message_id'      => message_id,
              'from_message_id' => from_message_id,
              'offset'          => offset,
              'limit'           => limit)
  end
  
  # Returns viewers of a recent outgoing message in a basic group or a supergroup chat.
  # For video notes and voice notes only users, opened content of the message, are returned.
  # The method can be called if messageProperties.can_get_viewers == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Identifier of the message.
  # @return [TD::Types::MessageViewers]
  def get_message_viewers(chat_id:, message_id:)
    broadcast('@type'      => 'getMessageViewers',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns information about messages.
  # If a message is not found, returns null on the corresponding position of the result.
  #
  # @param chat_id [Integer] Identifier of the chat the messages belong to.
  # @param message_ids [Array<Integer>] Identifiers of the messages to get.
  # @return [TD::Types::Messages]
  def get_messages(chat_id:, message_ids:)
    broadcast('@type'       => 'getMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids)
  end
  
  # Returns network data usage statistics.
  # Can be called before authorization.
  #
  # @param only_current [Boolean] Pass true to get statistics only for the current library launch.
  # @return [TD::Types::NetworkStatistics]
  def get_network_statistics(only_current:)
    broadcast('@type'        => 'getNetworkStatistics',
              'only_current' => only_current)
  end
  
  # Returns privacy settings for new chat creation.
  #
  # @return [TD::Types::NewChatPrivacySettings]
  def get_new_chat_privacy_settings
    broadcast('@type' => 'getNewChatPrivacySettings')
  end
  
  # Returns the value of an option by its name.
  # (Check the list of available options on https://core.telegram.org/tdlib/options.) Can be called before
  #   authorization.
  # Can be called synchronously for options "version" and "commit_hash".
  #
  # @param name [TD::Types::String] The name of the option.
  # @return [TD::Types::OptionValue]
  def get_option(name:)
    broadcast('@type' => 'getOption',
              'name'  => name)
  end
  
  # Returns sticker sets owned by the current user.
  #
  # @param offset_sticker_set_id [Integer] Identifier of the sticker set from which to return owned sticker sets; use 0
  #   to get results from the beginning.
  # @param limit [Integer] The maximum number of sticker sets to be returned; must be positive and can't be greater
  #   than 100.
  #   For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::StickerSets]
  def get_owned_sticker_sets(offset_sticker_set_id:, limit:)
    broadcast('@type'                 => 'getOwnedStickerSets',
              'offset_sticker_set_id' => offset_sticker_set_id,
              'limit'                 => limit)
  end
  
  # Returns a Telegram Passport authorization form for sharing data with a service.
  #
  # @param bot_user_id [Integer] User identifier of the service's bot.
  # @param scope [TD::Types::String] Telegram Passport element types requested by the service.
  # @param public_key [TD::Types::String] Service's public key.
  # @param nonce [TD::Types::String] Unique request identifier provided by the service.
  # @return [TD::Types::PassportAuthorizationForm]
  def get_passport_authorization_form(bot_user_id:, scope:, public_key:, nonce:)
    broadcast('@type'       => 'getPassportAuthorizationForm',
              'bot_user_id' => bot_user_id,
              'scope'       => scope,
              'public_key'  => public_key,
              'nonce'       => nonce)
  end
  
  # Returns already available Telegram Passport elements suitable for completing a Telegram Passport authorization
  #   form.
  # Result can be received only once for each authorization form.
  #
  # @param authorization_form_id [Integer] Authorization form identifier.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::PassportElementsWithErrors]
  def get_passport_authorization_form_available_elements(authorization_form_id:, password:)
    broadcast('@type'                 => 'getPassportAuthorizationFormAvailableElements',
              'authorization_form_id' => authorization_form_id,
              'password'              => password)
  end
  
  # Returns one of the available Telegram Passport elements.
  #
  # @param type [TD::Types::PassportElementType] Telegram Passport element type.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::PassportElement]
  def get_passport_element(type:, password:)
    broadcast('@type'    => 'getPassportElement',
              'type'     => type,
              'password' => password)
  end
  
  # Returns the current state of 2-step verification.
  #
  # @return [TD::Types::PasswordState]
  def get_password_state
    broadcast('@type' => 'getPasswordState')
  end
  
  # Returns an invoice payment form.
  # This method must be called when the user presses inline button of the type inlineKeyboardButtonTypeBuy, or wants to
  #   buy access to media in a messagePaidMedia message.
  #
  # @param input_invoice [TD::Types::InputInvoice] The invoice.
  # @param theme [TD::Types::ThemeParameters] Preferred payment form theme; pass null to use the default theme.
  # @return [TD::Types::PaymentForm]
  def get_payment_form(input_invoice:, theme:)
    broadcast('@type'         => 'getPaymentForm',
              'input_invoice' => input_invoice,
              'theme'         => theme)
  end
  
  # Returns information about a successful payment.
  #
  # @param chat_id [Integer] Chat identifier of the {TD::Types::MessageContent::PaymentSuccessful} message.
  # @param message_id [Integer] Message identifier.
  # @return [TD::Types::PaymentReceipt]
  def get_payment_receipt(chat_id:, message_id:)
    broadcast('@type'      => 'getPaymentReceipt',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns information about a phone number by its prefix.
  # Can be called before authorization.
  #
  # @param phone_number_prefix [TD::Types::String] The phone number prefix.
  # @return [TD::Types::PhoneNumberInfo]
  def get_phone_number_info(phone_number_prefix:)
    broadcast('@type'               => 'getPhoneNumberInfo',
              'phone_number_prefix' => phone_number_prefix)
  end
  
  # Returns information about a phone number by its prefix synchronously.
  # getCountries must be called at least once after changing localization to the specified language if properly
  #   localized country information is expected.
  # Can be called synchronously.
  #
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code for country information localization.
  # @param phone_number_prefix [TD::Types::String] The phone number prefix.
  # @return [TD::Types::PhoneNumberInfo]
  def get_phone_number_info_sync(language_code:, phone_number_prefix:)
    broadcast('@type'               => 'getPhoneNumberInfoSync',
              'language_code'       => language_code,
              'phone_number_prefix' => phone_number_prefix)
  end
  
  # Returns message senders voted for the specified option in a non-anonymous polls.
  # For optimal performance, the number of returned users is chosen by TDLib.
  #
  # @param chat_id [Integer] Identifier of the chat to which the poll belongs.
  # @param message_id [Integer] Identifier of the message containing the poll.
  # @param option_id [Integer] 0-based identifier of the answer option.
  # @param offset [Integer] Number of voters to skip in the result; must be non-negative.
  # @param limit [Integer] The maximum number of voters to be returned; must be positive and can't be greater than 50.
  #   For optimal performance, the number of returned voters is chosen by TDLib and can be smaller than the specified
  #   limit, even if the end of the voter list has not been reached.
  # @return [TD::Types::MessageSenders]
  def get_poll_voters(chat_id:, message_id:, option_id:, offset:, limit:)
    broadcast('@type'      => 'getPollVoters',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'option_id'  => option_id,
              'offset'     => offset,
              'limit'      => limit)
  end
  
  # Returns popular Web App bots.
  #
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of bots to be returned; up to 100.
  # @return [TD::Types::FoundUsers]
  def get_popular_web_app_bots(offset:, limit:)
    broadcast('@type'  => 'getPopularWebAppBots',
              'offset' => offset,
              'limit'  => limit)
  end
  
  # Returns an IETF language tag of the language preferred in the country, which must be used to fill native fields in
  #   Telegram Passport personal details.
  # Returns a 404 error if unknown.
  #
  # @param country_code [TD::Types::String] A two-letter ISO 3166-1 alpha-2 country code.
  # @return [TD::Types::Text]
  def get_preferred_country_language(country_code:)
    broadcast('@type'        => 'getPreferredCountryLanguage',
              'country_code' => country_code)
  end
  
  # Returns information about features, available to Premium users.
  #
  # @param source [TD::Types::PremiumSource] Source of the request; pass null if the method is called from some
  #   non-standard source.
  # @return [TD::Types::PremiumFeatures]
  def get_premium_features(source:)
    broadcast('@type'  => 'getPremiumFeatures',
              'source' => source)
  end
  
  # Returns available options for Telegram Premium gift code or giveaway creation.
  #
  # @param boosted_chat_id [Integer] Identifier of the supergroup or channel chat, which will be automatically boosted
  #   by receivers of the gift codes and which is administered by the user; 0 if none.
  # @return [TD::Types::PremiumGiftCodePaymentOptions]
  def get_premium_gift_code_payment_options(boosted_chat_id:)
    broadcast('@type'           => 'getPremiumGiftCodePaymentOptions',
              'boosted_chat_id' => boosted_chat_id)
  end
  
  # Returns information about a Telegram Premium giveaway.
  #
  # @param chat_id [Integer] Identifier of the channel chat which started the giveaway.
  # @param message_id [Integer] Identifier of the giveaway or a giveaway winners message in the chat.
  # @return [TD::Types::PremiumGiveawayInfo]
  def get_premium_giveaway_info(chat_id:, message_id:)
    broadcast('@type'      => 'getPremiumGiveawayInfo',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns information about a limit, increased for Premium users.
  # Returns a 404 error if the limit is unknown.
  #
  # @param limit_type [TD::Types::PremiumLimitType] Type of the limit.
  # @return [TD::Types::PremiumLimit]
  def get_premium_limit(limit_type:)
    broadcast('@type'      => 'getPremiumLimit',
              'limit_type' => limit_type)
  end
  
  # Returns state of Telegram Premium subscription and promotion videos for Premium features.
  #
  # @return [TD::Types::PremiumState]
  def get_premium_state
    broadcast('@type' => 'getPremiumState')
  end
  
  # Returns examples of premium stickers for demonstration purposes.
  #
  # @return [TD::Types::Stickers]
  def get_premium_sticker_examples
    broadcast('@type' => 'getPremiumStickerExamples')
  end
  
  # Returns premium stickers from regular sticker sets.
  #
  # @param limit [Integer] The maximum number of stickers to be returned; 0-100.
  # @return [TD::Types::Stickers]
  def get_premium_stickers(limit:)
    broadcast('@type' => 'getPremiumStickers',
              'limit' => limit)
  end
  
  # Returns the list of proxies that are currently set up.
  # Can be called before authorization.
  #
  # @return [TD::Types::Proxies]
  def get_proxies
    broadcast('@type' => 'getProxies')
  end
  
  # Returns an HTTPS link, which can be used to add a proxy.
  # Available only for SOCKS5 and MTProto proxies.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @return [TD::Types::HttpUrl]
  def get_proxy_link(proxy_id:)
    broadcast('@type'    => 'getProxyLink',
              'proxy_id' => proxy_id)
  end
  
  # Returns a globally unique push notification subscription identifier for identification of an account, which has
  #   received a push notification.
  # Can be called synchronously.
  #
  # @param payload [TD::Types::String] JSON-encoded push notification payload.
  # @return [TD::Types::PushReceiverId]
  def get_push_receiver_id(payload:)
    broadcast('@type'   => 'getPushReceiverId',
              'payload' => payload)
  end
  
  # Returns privacy settings for message read date.
  #
  # @return [TD::Types::ReadDatePrivacySettings]
  def get_read_date_privacy_settings
    broadcast('@type' => 'getReadDatePrivacySettings')
  end
  
  # Returns recent emoji statuses for self status.
  #
  # @return [TD::Types::EmojiStatuses]
  def get_recent_emoji_statuses
    broadcast('@type' => 'getRecentEmojiStatuses')
  end
  
  # Returns up to 20 recently used inline bots in the order of their last usage.
  #
  # @return [TD::Types::Users]
  def get_recent_inline_bots
    broadcast('@type' => 'getRecentInlineBots')
  end
  
  # Returns a list of recently used stickers.
  #
  # @param is_attached [Boolean] Pass true to return stickers and masks that were recently attached to photos or video
  #   files; pass false to return recently sent stickers.
  # @return [TD::Types::Stickers]
  def get_recent_stickers(is_attached:)
    broadcast('@type'       => 'getRecentStickers',
              'is_attached' => is_attached)
  end
  
  # Returns recently opened chats; this is an offline request.
  # Returns chats in the order of last opening.
  #
  # @param limit [Integer] The maximum number of chats to be returned.
  # @return [TD::Types::Chats]
  def get_recently_opened_chats(limit:)
    broadcast('@type' => 'getRecentlyOpenedChats',
              'limit' => limit)
  end
  
  # Returns t.me URLs recently visited by a newly registered user.
  #
  # @param referrer [TD::Types::String] Google Play referrer to identify the user.
  # @return [TD::Types::TMeUrls]
  def get_recently_visited_t_me_urls(referrer:)
    broadcast('@type'    => 'getRecentlyVisitedTMeUrls',
              'referrer' => referrer)
  end
  
  # Returns recommended chat folders for the current user.
  #
  # @return [TD::Types::RecommendedChatFolders]
  def get_recommended_chat_folders
    broadcast('@type' => 'getRecommendedChatFolders')
  end
  
  # Returns a list of channel chats recommended to the current user.
  #
  # @return [TD::Types::Chats]
  def get_recommended_chats
    broadcast('@type' => 'getRecommendedChats')
  end
  
  # Returns a 2-step verification recovery email address that was previously set up.
  # This method can be used to verify a password provided by the user.
  #
  # @param password [TD::Types::String] The 2-step verification password for the current user.
  # @return [TD::Types::RecoveryEmailAddress]
  def get_recovery_email_address(password:)
    broadcast('@type'    => 'getRecoveryEmailAddress',
              'password' => password)
  end
  
  # Returns information about a file by its remote identifier; this is an offline request.
  # Can be used to register a URL as a file for further uploading, or sending as a message.
  # Even the request succeeds, the file can be used only if it is still accessible to the user.
  # For example, if the file is from a message, then the message must be not deleted and accessible to the user.
  # If the file database is disabled, then the corresponding object with the file must be preloaded by the application.
  #
  # @param remote_file_id [TD::Types::String] Remote identifier of the file to get.
  # @param file_type [TD::Types::FileType] File type; pass null if unknown.
  # @return [TD::Types::File]
  def get_remote_file(remote_file_id:, file_type:)
    broadcast('@type'          => 'getRemoteFile',
              'remote_file_id' => remote_file_id,
              'file_type'      => file_type)
  end
  
  # Returns information about a non-bundled message that is replied by a given message.
  # Also, returns the pinned message, the game message, the invoice message, the message with a previously set same
  #   background, the giveaway message, and the topic creation message for messages of the types messagePinMessage,
  #   messageGameScore, messagePaymentSuccessful, messageChatSetBackground, messagePremiumGiveawayCompleted and topic
  #   messages without non-bundled replied message respectively.
  #
  # @param chat_id [Integer] Identifier of the chat the message belongs to.
  # @param message_id [Integer] Identifier of the reply message.
  # @return [TD::Types::Message]
  def get_replied_message(chat_id:, message_id:)
    broadcast('@type'      => 'getRepliedMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Returns saved animations.
  #
  # @return [TD::Types::Animations]
  def get_saved_animations
    broadcast('@type' => 'getSavedAnimations')
  end
  
  # Returns tags used in Saved Messages or a Saved Messages topic.
  #
  # @param saved_messages_topic_id [Integer] Identifier of Saved Messages topic which tags will be returned; pass 0 to
  #   get all Saved Messages tags.
  # @return [TD::Types::SavedMessagesTags]
  def get_saved_messages_tags(saved_messages_topic_id:)
    broadcast('@type'                   => 'getSavedMessagesTags',
              'saved_messages_topic_id' => saved_messages_topic_id)
  end
  
  # Returns messages in a Saved Messages topic.
  # The messages are returned in reverse chronological order (i.e., in order of decreasing message_id).
  #
  # @param saved_messages_topic_id [Integer] Identifier of Saved Messages topic which messages will be fetched.
  # @param from_message_id [Integer] Identifier of the message starting from which messages must be fetched; use 0 to
  #   get results from the last message.
  # @param offset [Integer] Specify 0 to get results from exactly the message from_message_id or a negative offset up
  #   to 99 to get additionally some newer messages.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   If the offset is negative, the limit must be greater than or equal to -offset.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::Messages]
  def get_saved_messages_topic_history(saved_messages_topic_id:, from_message_id:, offset:, limit:)
    broadcast('@type'                   => 'getSavedMessagesTopicHistory',
              'saved_messages_topic_id' => saved_messages_topic_id,
              'from_message_id'         => from_message_id,
              'offset'                  => offset,
              'limit'                   => limit)
  end
  
  # Returns the last message sent in a Saved Messages topic no later than the specified date.
  #
  # @param saved_messages_topic_id [Integer] Identifier of Saved Messages topic which message will be returned.
  # @param date [Integer] Point in time (Unix timestamp) relative to which to search for messages.
  # @return [TD::Types::Message]
  def get_saved_messages_topic_message_by_date(saved_messages_topic_id:, date:)
    broadcast('@type'                   => 'getSavedMessagesTopicMessageByDate',
              'saved_messages_topic_id' => saved_messages_topic_id,
              'date'                    => date)
  end
  
  # Returns saved notification sound by its identifier.
  # Returns a 404 error if there is no saved notification sound with the specified identifier.
  #
  # @param notification_sound_id [Integer] Identifier of the notification sound.
  # @return [TD::Types::NotificationSounds]
  def get_saved_notification_sound(notification_sound_id:)
    broadcast('@type'                 => 'getSavedNotificationSound',
              'notification_sound_id' => notification_sound_id)
  end
  
  # Returns the list of saved notification sounds.
  # If a sound isn't in the list, then default sound needs to be used.
  #
  # @return [TD::Types::NotificationSounds]
  def get_saved_notification_sounds
    broadcast('@type' => 'getSavedNotificationSounds')
  end
  
  # Returns saved order information.
  # Returns a 404 error if there is no saved order information.
  #
  # @return [TD::Types::OrderInfo]
  def get_saved_order_info
    broadcast('@type' => 'getSavedOrderInfo')
  end
  
  # Returns the notification settings for chats of a given type.
  #
  # @param scope [TD::Types::NotificationSettingsScope] Types of chats for which to return the notification settings
  #   information.
  # @return [TD::Types::ScopeNotificationSettings]
  def get_scope_notification_settings(scope:)
    broadcast('@type' => 'getScopeNotificationSettings',
              'scope' => scope)
  end
  
  # Returns recently searched for hashtags or cashtags by their prefix.
  #
  # @param tag_prefix [TD::Types::String] Prefix of hashtags or cashtags to return.
  # @param limit [Integer] The maximum number of items to be returned.
  # @return [TD::Types::Hashtags]
  def get_searched_for_tags(tag_prefix:, limit:)
    broadcast('@type'      => 'getSearchedForTags',
              'tag_prefix' => tag_prefix,
              'limit'      => limit)
  end
  
  # Returns information about a secret chat by its identifier.
  # This is an offline request.
  #
  # @param secret_chat_id [Integer] Secret chat identifier.
  # @return [TD::Types::SecretChat]
  def get_secret_chat(secret_chat_id:)
    broadcast('@type'          => 'getSecretChat',
              'secret_chat_id' => secret_chat_id)
  end
  
  # Returns a URL for a Telegram Ad platform account that can be used to set up advertisements for the chat paid in the
  #   owned Telegram Stars.
  #
  # @param owner_id [TD::Types::MessageSender] Identifier of the owner of the Telegram Stars; can be identifier of an
  #   owned bot, or identifier of an owned channel chat.
  # @return [TD::Types::HttpUrl]
  def get_star_ad_account_url(owner_id:)
    broadcast('@type'    => 'getStarAdAccountUrl',
              'owner_id' => owner_id)
  end
  
  # Returns available options for Telegram Stars gifting.
  #
  # @param user_id [Integer] Identifier of the user that will receive Telegram Stars; pass 0 to get options for an
  #   unspecified user.
  # @return [TD::Types::StarPaymentOptions]
  def get_star_gift_payment_options(user_id:)
    broadcast('@type'   => 'getStarGiftPaymentOptions',
              'user_id' => user_id)
  end
  
  # Returns available options for Telegram Stars purchase.
  #
  # @return [TD::Types::StarPaymentOptions]
  def get_star_payment_options
    broadcast('@type' => 'getStarPaymentOptions')
  end
  
  # Returns detailed Telegram Star revenue statistics.
  #
  # @param owner_id [TD::Types::MessageSender] Identifier of the owner of the Telegram Stars; can be identifier of an
  #   owned bot, or identifier of a channel chat with supergroupFullInfo.can_get_star_revenue_statistics == true.
  # @param is_dark [Boolean] Pass true if a dark theme is used by the application.
  # @return [TD::Types::StarRevenueStatistics]
  def get_star_revenue_statistics(owner_id:, is_dark:)
    broadcast('@type'    => 'getStarRevenueStatistics',
              'owner_id' => owner_id,
              'is_dark'  => is_dark)
  end
  
  # Returns the list of Telegram Star subscriptions for the current user.
  #
  # @param only_expiring [Boolean] Pass true to receive only expiring subscriptions for which there are no enough
  #   Telegram Stars to extend.
  # @param offset [TD::Types::String] Offset of the first subscription to return as received from the previous request;
  #   use empty string to get the first chunk of results.
  # @return [TD::Types::StarSubscriptions]
  def get_star_subscriptions(only_expiring:, offset:)
    broadcast('@type'         => 'getStarSubscriptions',
              'only_expiring' => only_expiring,
              'offset'        => offset)
  end
  
  # Returns the list of Telegram Star transactions for the specified owner.
  #
  # @param owner_id [TD::Types::MessageSender] Identifier of the owner of the Telegram Stars; can be the identifier of
  #   the current user, identifier of an owned bot, or identifier of a channel chat with
  #   supergroupFullInfo.can_get_star_revenue_statistics == true.
  # @param subscription_id [TD::Types::String] If non-empty, only transactions related to the Star Subscription will be
  #   returned.
  # @param direction [TD::Types::StarTransactionDirection] Direction of the transactions to receive; pass null to get
  #   all transactions.
  # @param offset [TD::Types::String] Offset of the first transaction to return as received from the previous request;
  #   use empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of transactions to return.
  # @return [TD::Types::StarTransactions]
  def get_star_transactions(owner_id:, subscription_id:, direction:, offset:, limit:)
    broadcast('@type'           => 'getStarTransactions',
              'owner_id'        => owner_id,
              'subscription_id' => subscription_id,
              'direction'       => direction,
              'offset'          => offset,
              'limit'           => limit)
  end
  
  # Returns a URL for Telegram Star withdrawal.
  #
  # @param owner_id [TD::Types::MessageSender] Identifier of the owner of the Telegram Stars; can be identifier of an
  #   owned bot, or identifier of an owned channel chat.
  # @param star_count [Integer] The number of Telegram Stars to withdraw.
  #   Must be at least getOption("star_withdrawal_count_min").
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::HttpUrl]
  def get_star_withdrawal_url(owner_id:, star_count:, password:)
    broadcast('@type'      => 'getStarWithdrawalUrl',
              'owner_id'   => owner_id,
              'star_count' => star_count,
              'password'   => password)
  end
  
  # Loads an asynchronous or a zoomed in statistical graph.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param token [TD::Types::String] The token for graph loading.
  # @param x [Integer] X-value for zoomed in graph or 0 otherwise.
  # @return [TD::Types::StatisticalGraph]
  def get_statistical_graph(chat_id:, token:, x:)
    broadcast('@type'   => 'getStatisticalGraph',
              'chat_id' => chat_id,
              'token'   => token,
              'x'       => x)
  end
  
  # Returns emoji corresponding to a sticker.
  # The list is only for informational purposes, because a sticker is always sent with a fixed emoji from the
  #   corresponding Sticker object.
  #
  # @param sticker [TD::Types::InputFile] Sticker file identifier.
  # @return [TD::Types::Emojis]
  def get_sticker_emojis(sticker:)
    broadcast('@type'   => 'getStickerEmojis',
              'sticker' => sticker)
  end
  
  # Returns information about a sticker set by its identifier.
  #
  # @param set_id [Integer] Identifier of the sticker set.
  # @return [TD::Types::StickerSet]
  def get_sticker_set(set_id:)
    broadcast('@type'  => 'getStickerSet',
              'set_id' => set_id)
  end
  
  # Returns stickers from the installed sticker sets that correspond to any of the given emoji or can be found by
  #   sticker-specific keywords.
  # If the query is non-empty, then favorite, recently used or trending stickers may also be returned.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the stickers to return.
  # @param query [TD::Types::String, nil] Search query; a space-separated list of emojis or a keyword prefix.
  #   If empty, returns all known installed stickers.
  # @param limit [Integer] The maximum number of stickers to be returned.
  # @param chat_id [Integer] Chat identifier for which to return stickers.
  #   Available custom emoji stickers may be different for different chats.
  # @return [TD::Types::Stickers]
  def get_stickers(sticker_type:, query: nil, limit:, chat_id:)
    broadcast('@type'        => 'getStickers',
              'sticker_type' => sticker_type,
              'query'        => query,
              'limit'        => limit,
              'chat_id'      => chat_id)
  end
  
  # Returns storage usage statistics.
  # Can be called before authorization.
  #
  # @param chat_limit [Integer] The maximum number of chats with the largest storage usage for which separate
  #   statistics need to be returned.
  #   All other chats will be grouped in entries with chat_id == 0.
  #   If the chat info database is not used, the chat_limit is ignored and is always set to 0.
  # @return [TD::Types::StorageStatistics]
  def get_storage_statistics(chat_limit:)
    broadcast('@type'      => 'getStorageStatistics',
              'chat_limit' => chat_limit)
  end
  
  # Quickly returns approximate storage usage statistics.
  # Can be called before authorization.
  #
  # @return [TD::Types::StorageStatisticsFast]
  def get_storage_statistics_fast
    broadcast('@type' => 'getStorageStatisticsFast')
  end
  
  # Returns a story.
  #
  # @param story_sender_chat_id [Integer] Identifier of the chat that posted the story.
  # @param story_id [Integer] Story identifier.
  # @param only_local [Boolean] Pass true to get only locally available information without sending network requests.
  # @return [TD::Types::Story]
  def get_story(story_sender_chat_id:, story_id:, only_local:)
    broadcast('@type'                => 'getStory',
              'story_sender_chat_id' => story_sender_chat_id,
              'story_id'             => story_id,
              'only_local'           => only_local)
  end
  
  # Returns reactions, which can be chosen for a story.
  #
  # @param row_size [Integer] Number of reaction per row, 5-25.
  # @return [TD::Types::AvailableReactions]
  def get_story_available_reactions(row_size:)
    broadcast('@type'    => 'getStoryAvailableReactions',
              'row_size' => row_size)
  end
  
  # Returns interactions with a story.
  # The method can be called only for stories posted on behalf of the current user.
  #
  # @param story_id [Integer] Story identifier.
  # @param query [TD::Types::String, nil] Query to search for in names, usernames and titles; may be empty to get all
  #   relevant interactions.
  # @param only_contacts [Boolean] Pass true to get only interactions by contacts; pass false to get all relevant
  #   interactions.
  # @param prefer_forwards [Boolean] Pass true to get forwards and reposts first, then reactions, then other views;
  #   pass false to get interactions sorted just by interaction date.
  # @param prefer_with_reaction [Boolean] Pass true to get interactions with reaction first; pass false to get
  #   interactions sorted just by interaction date.
  #   Ignored if prefer_forwards == true.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of story interactions to return.
  # @return [TD::Types::StoryInteractions]
  def get_story_interactions(story_id:, query: nil, only_contacts:, prefer_forwards:, prefer_with_reaction:, offset:,
                             limit:)
    broadcast('@type'                => 'getStoryInteractions',
              'story_id'             => story_id,
              'query'                => query,
              'only_contacts'        => only_contacts,
              'prefer_forwards'      => prefer_forwards,
              'prefer_with_reaction' => prefer_with_reaction,
              'offset'               => offset,
              'limit'                => limit)
  end
  
  # Returns the list of chats with non-default notification settings for stories.
  #
  # @return [TD::Types::Chats]
  def get_story_notification_settings_exceptions
    broadcast('@type' => 'getStoryNotificationSettingsExceptions')
  end
  
  # Returns forwards of a story as a message to public chats and reposts by public channels.
  # Can be used only if the story is posted on behalf of the current user or story.can_get_statistics == true.
  # For optimal performance, the number of returned messages and stories is chosen by TDLib.
  #
  # @param story_sender_chat_id [Integer] The identifier of the sender of the story.
  # @param story_id [Integer] The identifier of the story.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of messages and stories to be returned; must be positive and can't be
  #   greater than 100.
  #   For optimal performance, the number of returned objects is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::PublicForwards]
  def get_story_public_forwards(story_sender_chat_id:, story_id:, offset:, limit:)
    broadcast('@type'                => 'getStoryPublicForwards',
              'story_sender_chat_id' => story_sender_chat_id,
              'story_id'             => story_id,
              'offset'               => offset,
              'limit'                => limit)
  end
  
  # Returns detailed statistics about a story.
  # Can be used only if story.can_get_statistics == true.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param story_id [Integer] Story identifier.
  # @param is_dark [Boolean] Pass true if a dark theme is used by the application.
  # @return [TD::Types::StoryStatistics]
  def get_story_statistics(chat_id:, story_id:, is_dark:)
    broadcast('@type'    => 'getStoryStatistics',
              'chat_id'  => chat_id,
              'story_id' => story_id,
              'is_dark'  => is_dark)
  end
  
  # Returns suggested name for saving a file in a given directory.
  #
  # @param file_id [Integer] Identifier of the file.
  # @param directory [TD::Types::String] Directory in which the file is supposed to be saved.
  # @return [TD::Types::Text]
  def get_suggested_file_name(file_id:, directory:)
    broadcast('@type'     => 'getSuggestedFileName',
              'file_id'   => file_id,
              'directory' => directory)
  end
  
  # Returns a suggested name for a new sticker set with a given title.
  #
  # @param title [TD::Types::String] Sticker set title; 1-64 characters.
  # @return [TD::Types::Text]
  def get_suggested_sticker_set_name(title:)
    broadcast('@type' => 'getSuggestedStickerSetName',
              'title' => title)
  end
  
  # Returns a list of basic group and supergroup chats, which can be used as a discussion group for a channel.
  # Returned basic group chats must be first upgraded to supergroups before they can be set as a discussion group.
  # To set a returned supergroup as a discussion group, access to its old messages must be enabled using
  #   toggleSupergroupIsAllHistoryAvailable first.
  #
  # @return [TD::Types::Chats]
  def get_suitable_discussion_chats
    broadcast('@type' => 'getSuitableDiscussionChats')
  end
  
  # Returns a list of channel chats, which can be used as a personal chat.
  #
  # @return [TD::Types::Chats]
  def get_suitable_personal_chats
    broadcast('@type' => 'getSuitablePersonalChats')
  end
  
  # Returns information about a supergroup or a channel by its identifier.
  # This is an offline request if the current user is not a bot.
  #
  # @param supergroup_id [Integer] Supergroup or channel identifier.
  # @return [TD::Types::Supergroup]
  def get_supergroup(supergroup_id:)
    broadcast('@type'         => 'getSupergroup',
              'supergroup_id' => supergroup_id)
  end
  
  # Returns full information about a supergroup or a channel by its identifier, cached for up to 1 minute.
  #
  # @param supergroup_id [Integer] Supergroup or channel identifier.
  # @return [TD::Types::SupergroupFullInfo]
  def get_supergroup_full_info(supergroup_id:)
    broadcast('@type'         => 'getSupergroupFullInfo',
              'supergroup_id' => supergroup_id)
  end
  
  # Returns information about members or banned users in a supergroup or channel.
  # Can be used only if supergroupFullInfo.can_get_members == true; additionally, administrator privileges may be
  #   required for some filters.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param filter [TD::Types::SupergroupMembersFilter] The type of users to return; pass null to use
  #   supergroupMembersFilterRecent.
  # @param offset [Integer] Number of users to skip.
  # @param limit [Integer] The maximum number of users to be returned; up to 200.
  # @return [TD::Types::ChatMembers]
  def get_supergroup_members(supergroup_id:, filter:, offset:, limit:)
    broadcast('@type'         => 'getSupergroupMembers',
              'supergroup_id' => supergroup_id,
              'filter'        => filter,
              'offset'        => offset,
              'limit'         => limit)
  end
  
  # Returns localized name of the Telegram support user; for Telegram support only.
  #
  # @return [TD::Types::Text]
  def get_support_name
    broadcast('@type' => 'getSupportName')
  end
  
  # Returns a user that can be contacted to get support.
  #
  # @return [TD::Types::User]
  def get_support_user
    broadcast('@type' => 'getSupportUser')
  end
  
  # Returns information about the current temporary password.
  #
  # @return [TD::Types::TemporaryPasswordState]
  def get_temporary_password_state
    broadcast('@type' => 'getTemporaryPasswordState')
  end
  
  # Returns all entities (mentions, hashtags, cashtags, bot commands, bank card numbers, URLs, and email addresses)
  #   found in the text.
  # Can be called synchronously.
  #
  # @param text [TD::Types::String] The text in which to look for entities.
  # @return [TD::Types::TextEntities]
  def get_text_entities(text:)
    broadcast('@type' => 'getTextEntities',
              'text'  => text)
  end
  
  # Converts a themeParameters object to corresponding JSON-serialized string.
  # Can be called synchronously.
  #
  # @param theme [TD::Types::ThemeParameters] Theme parameters to convert to JSON.
  # @return [TD::Types::Text]
  def get_theme_parameters_json_string(theme:)
    broadcast('@type' => 'getThemeParametersJsonString',
              'theme' => theme)
  end
  
  # Returns up to 8 emoji statuses, which must be shown in the emoji status list for chats.
  #
  # @return [TD::Types::EmojiStatuses]
  def get_themed_chat_emoji_statuses
    broadcast('@type' => 'getThemedChatEmojiStatuses')
  end
  
  # Returns up to 8 emoji statuses, which must be shown right after the default Premium Badge in the emoji status list
  #   for self status.
  #
  # @return [TD::Types::EmojiStatuses]
  def get_themed_emoji_statuses
    broadcast('@type' => 'getThemedEmojiStatuses')
  end
  
  # Returns the list of supported time zones.
  #
  # @return [TD::Types::TimeZones]
  def get_time_zones
    broadcast('@type' => 'getTimeZones')
  end
  
  # Returns a list of frequently used chats.
  #
  # @param category [TD::Types::TopChatCategory] Category of chats to be returned.
  # @param limit [Integer] The maximum number of chats to be returned; up to 30.
  # @return [TD::Types::Chats]
  def get_top_chats(category:, limit:)
    broadcast('@type'    => 'getTopChats',
              'category' => category,
              'limit'    => limit)
  end
  
  # Returns a list of trending sticker sets.
  # For optimal performance, the number of returned sticker sets is chosen by TDLib.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to return.
  # @param offset [Integer] The offset from which to return the sticker sets; must be non-negative.
  # @param limit [Integer] The maximum number of sticker sets to be returned; up to 100.
  #   For optimal performance, the number of returned sticker sets is chosen by TDLib and can be smaller than the
  #   specified limit, even if the end of the list has not been reached.
  # @return [TD::Types::TrendingStickerSets]
  def get_trending_sticker_sets(sticker_type:, offset:, limit:)
    broadcast('@type'        => 'getTrendingStickerSets',
              'sticker_type' => sticker_type,
              'offset'       => offset,
              'limit'        => limit)
  end
  
  # Returns information about a user by their identifier.
  # This is an offline request if the current user is not a bot.
  #
  # @param user_id [Integer] User identifier.
  # @return [TD::Types::User]
  def get_user(user_id:)
    broadcast('@type'   => 'getUser',
              'user_id' => user_id)
  end
  
  # Returns the list of boosts applied to a chat by a given user; requires administrator rights in the chat; for bots
  #   only.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param user_id [Integer] Identifier of the user.
  # @return [TD::Types::FoundChatBoosts]
  def get_user_chat_boosts(chat_id:, user_id:)
    broadcast('@type'   => 'getUserChatBoosts',
              'chat_id' => chat_id,
              'user_id' => user_id)
  end
  
  # Returns full information about a user by their identifier.
  #
  # @param user_id [Integer] User identifier.
  # @return [TD::Types::UserFullInfo]
  def get_user_full_info(user_id:)
    broadcast('@type'   => 'getUserFullInfo',
              'user_id' => user_id)
  end
  
  # Returns an HTTPS link, which can be used to get information about the current user.
  #
  # @return [TD::Types::UserLink]
  def get_user_link
    broadcast('@type' => 'getUserLink')
  end
  
  # Returns the current privacy settings.
  #
  # @param setting [TD::Types::UserPrivacySetting] The privacy setting.
  # @return [TD::Types::UserPrivacySettingRules]
  def get_user_privacy_setting_rules(setting:)
    broadcast('@type'   => 'getUserPrivacySettingRules',
              'setting' => setting)
  end
  
  # Returns the profile photos of a user.
  # Personal and public photo aren't returned.
  #
  # @param user_id [Integer] User identifier.
  # @param offset [Integer] The number of photos to skip; must be non-negative.
  # @param limit [Integer] The maximum number of photos to be returned; up to 100.
  # @return [TD::Types::ChatPhotos]
  def get_user_profile_photos(user_id:, offset:, limit:)
    broadcast('@type'   => 'getUserProfilePhotos',
              'user_id' => user_id,
              'offset'  => offset,
              'limit'   => limit)
  end
  
  # Returns support information for the given user; for Telegram support only.
  #
  # @param user_id [Integer] User identifier.
  # @return [TD::Types::UserSupportInfo]
  def get_user_support_info(user_id:)
    broadcast('@type'   => 'getUserSupportInfo',
              'user_id' => user_id)
  end
  
  # Returns the list of participant identifiers, on whose behalf a video chat in the chat can be joined.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::MessageSenders]
  def get_video_chat_available_participants(chat_id:)
    broadcast('@type'   => 'getVideoChatAvailableParticipants',
              'chat_id' => chat_id)
  end
  
  # Returns RTMP URL for streaming to the chat; requires owner privileges.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::RtmpUrl]
  def get_video_chat_rtmp_url(chat_id:)
    broadcast('@type'   => 'getVideoChatRtmpUrl',
              'chat_id' => chat_id)
  end
  
  # Returns an HTTPS URL of a Web App to open after a link of the type internalLinkTypeWebApp is clicked.
  #
  # @param chat_id [Integer] Identifier of the chat in which the link was clicked; pass 0 if none.
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param web_app_short_name [TD::Types::String] Short name of the Web App.
  # @param start_parameter [TD::Types::String] Start parameter from internalLinkTypeWebApp.
  # @param theme [TD::Types::ThemeParameters] Preferred Web App theme; pass null to use the default theme.
  # @param application_name [TD::Types::String] Short name of the current application; 0-64 English letters, digits,
  #   and underscores.
  # @param allow_write_access [Boolean] Pass true if the current user allowed the bot to send them messages.
  # @return [TD::Types::HttpUrl]
  def get_web_app_link_url(chat_id:, bot_user_id:, web_app_short_name:, start_parameter:, theme:, application_name:,
                           allow_write_access:)
    broadcast('@type'              => 'getWebAppLinkUrl',
              'chat_id'            => chat_id,
              'bot_user_id'        => bot_user_id,
              'web_app_short_name' => web_app_short_name,
              'start_parameter'    => start_parameter,
              'theme'              => theme,
              'application_name'   => application_name,
              'allow_write_access' => allow_write_access)
  end
  
  # Returns an HTTPS URL of a Web App to open from the side menu, a keyboardButtonTypeWebApp button, or an
  #   inlineQueryResultsButtonTypeWebApp button.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param url [TD::Types::String] The URL from a {TD::Types::KeyboardButtonType::WebApp} button,
  #   {TD::Types::InlineQueryResultsButtonType::WebApp} button, or an empty string when the bot is opened from the side menu.
  # @param theme [TD::Types::ThemeParameters] Preferred Web App theme; pass null to use the default theme.
  # @param application_name [TD::Types::String] Short name of the current application; 0-64 English letters, digits,
  #   and underscores.
  # @return [TD::Types::HttpUrl]
  def get_web_app_url(bot_user_id:, url:, theme:, application_name:)
    broadcast('@type'            => 'getWebAppUrl',
              'bot_user_id'      => bot_user_id,
              'url'              => url,
              'theme'            => theme,
              'application_name' => application_name)
  end
  
  # Returns an instant view version of a web page if available.
  # Returns a 404 error if the web page has no instant view page.
  #
  # @param url [TD::Types::String] The web page URL.
  # @param force_full [Boolean] Pass true to get full instant view for the web page.
  # @return [TD::Types::WebPageInstantView]
  def get_web_page_instant_view(url:, force_full:)
    broadcast('@type'      => 'getWebPageInstantView',
              'url'        => url,
              'force_full' => force_full)
  end
  
  # Hides the list of contacts that have close birthdays for 24 hours.
  #
  # @return [TD::Types::Ok]
  def hide_contact_close_birthdays
    broadcast('@type' => 'hideContactCloseBirthdays')
  end
  
  # Hides a suggested action.
  #
  # @param action [TD::Types::SuggestedAction] Suggested action to hide.
  # @return [TD::Types::Ok]
  def hide_suggested_action(action:)
    broadcast('@type'  => 'hideSuggestedAction',
              'action' => action)
  end
  
  # Adds new contacts or edits existing contacts by their phone numbers; contacts' user identifiers are ignored.
  #
  # @param contacts [Array<TD::Types::Contact>] The list of contacts to import or edit; contacts' vCard are ignored and
  #   are not imported.
  # @return [TD::Types::ImportedContacts]
  def import_contacts(contacts:)
    broadcast('@type'    => 'importContacts',
              'contacts' => contacts)
  end
  
  # Imports messages exported from another app.
  #
  # @param chat_id [Integer] Identifier of a chat to which the messages will be imported.
  #   It must be an identifier of a private chat with a mutual contact or an identifier of a supergroup chat with
  #   can_change_info member right.
  # @param message_file [TD::Types::InputFile] File with messages to import.
  #   Only {TD::Types::InputFile::Local} and {TD::Types::InputFile::Generated} are supported.
  #   The file must not be previously uploaded.
  # @param attached_files [Array<TD::Types::InputFile>] Files used in the imported messages.
  #   Only {TD::Types::InputFile::Local} and {TD::Types::InputFile::Generated} are supported.
  #   The files must not be previously uploaded.
  # @return [TD::Types::Ok]
  def import_messages(chat_id:, message_file:, attached_files:)
    broadcast('@type'          => 'importMessages',
              'chat_id'        => chat_id,
              'message_file'   => message_file,
              'attached_files' => attached_files)
  end
  
  # Invites users to an active group call.
  # Sends a service message of type messageInviteVideoChatParticipants for video chats.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param user_ids [Array<Integer>] User identifiers.
  #   At most 10 users can be invited simultaneously.
  # @return [TD::Types::Ok]
  def invite_group_call_participants(group_call_id:, user_ids:)
    broadcast('@type'         => 'inviteGroupCallParticipants',
              'group_call_id' => group_call_id,
              'user_ids'      => user_ids)
  end
  
  # Adds the current user as a new member to a chat.
  # Private and secret chats can't be joined using this method.
  # May return an error with a message "INVITE_REQUEST_SENT" if only a join request was created.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def join_chat(chat_id:)
    broadcast('@type'   => 'joinChat',
              'chat_id' => chat_id)
  end
  
  # Uses an invite link to add the current user to the chat if possible.
  # May return an error with a message "INVITE_REQUEST_SENT" if only a join request was created.
  #
  # @param invite_link [TD::Types::String] Invite link to use.
  # @return [TD::Types::Chat]
  def join_chat_by_invite_link(invite_link:)
    broadcast('@type'       => 'joinChatByInviteLink',
              'invite_link' => invite_link)
  end
  
  # Joins an active group call.
  # Returns join response payload for tgcalls.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param participant_id [TD::Types::MessageSender] Identifier of a group call participant, which will be used to join
  #   the call; pass null to join as self; video chats only.
  # @param audio_source_id [Integer] Caller audio channel synchronization source identifier; received from tgcalls.
  # @param payload [TD::Types::String] Group call join payload; received from tgcalls.
  # @param is_muted [Boolean] Pass true to join the call with muted microphone.
  # @param is_my_video_enabled [Boolean] Pass true if the user's video is enabled.
  # @param invite_hash [TD::Types::String] If non-empty, invite hash to be used to join the group call without being
  #   muted by administrators.
  # @return [TD::Types::Text]
  def join_group_call(group_call_id:, participant_id:, audio_source_id:, payload:, is_muted:, is_my_video_enabled:,
                      invite_hash:)
    broadcast('@type'               => 'joinGroupCall',
              'group_call_id'       => group_call_id,
              'participant_id'      => participant_id,
              'audio_source_id'     => audio_source_id,
              'payload'             => payload,
              'is_muted'            => is_muted,
              'is_my_video_enabled' => is_my_video_enabled,
              'invite_hash'         => invite_hash)
  end
  
  # Launches a prepaid Telegram Premium giveaway.
  #
  # @param giveaway_id [Integer] Unique identifier of the prepaid giveaway.
  # @param parameters [TD::Types::PremiumGiveawayParameters] Giveaway parameters.
  # @return [TD::Types::Ok]
  def launch_prepaid_premium_giveaway(giveaway_id:, parameters:)
    broadcast('@type'       => 'launchPrepaidPremiumGiveaway',
              'giveaway_id' => giveaway_id,
              'parameters'  => parameters)
  end
  
  # Removes the current user from chat members.
  # Private and secret chats can't be left using this method.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def leave_chat(chat_id:)
    broadcast('@type'   => 'leaveChat',
              'chat_id' => chat_id)
  end
  
  # Leaves a group call.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def leave_group_call(group_call_id:)
    broadcast('@type'         => 'leaveGroupCall',
              'group_call_id' => group_call_id)
  end
  
  # Loads more active stories from a story list.
  # The loaded stories will be sent through updates.
  # Active stories are sorted by the pair (active_stories.order, active_stories.story_sender_chat_id) in descending
  #   order.
  # Returns a 404 error if all active stories have been loaded.
  #
  # @param story_list [TD::Types::StoryList] The story list in which to load active stories.
  # @return [TD::Types::Ok]
  def load_active_stories(story_list:)
    broadcast('@type'      => 'loadActiveStories',
              'story_list' => story_list)
  end
  
  # Loads more chats from a chat list.
  # The loaded chats and their positions in the chat list will be sent through updates.
  # Chats are sorted by the pair (chat.position.order, chat.id) in descending order.
  # Returns a 404 error if all chats have been loaded.
  #
  # @param chat_list [TD::Types::ChatList] The chat list in which to load chats; pass null to load chats from the main
  #   chat list.
  # @param limit [Integer] The maximum number of chats to be loaded.
  #   For optimal performance, the number of loaded chats is chosen by TDLib and can be smaller than the specified
  #   limit, even if the end of the list is not reached.
  # @return [TD::Types::Ok]
  def load_chats(chat_list:, limit:)
    broadcast('@type'     => 'loadChats',
              'chat_list' => chat_list,
              'limit'     => limit)
  end
  
  # Loads more participants of a group call.
  # The loaded participants will be received through updates.
  # Use the field groupCall.loaded_all_participants to check whether all participants have already been loaded.
  #
  # @param group_call_id [Integer] Group call identifier.
  #   The group call must be previously received through getGroupCall and must be joined or being joined.
  # @param limit [Integer] The maximum number of participants to load; up to 100.
  # @return [TD::Types::Ok]
  def load_group_call_participants(group_call_id:, limit:)
    broadcast('@type'         => 'loadGroupCallParticipants',
              'group_call_id' => group_call_id,
              'limit'         => limit)
  end
  
  # Loads quick reply messages that can be sent by a given quick reply shortcut.
  # The loaded messages will be sent through updateQuickReplyShortcutMessages.
  #
  # @param shortcut_id [Integer] Unique identifier of the quick reply shortcut.
  # @return [TD::Types::Ok]
  def load_quick_reply_shortcut_messages(shortcut_id:)
    broadcast('@type'       => 'loadQuickReplyShortcutMessages',
              'shortcut_id' => shortcut_id)
  end
  
  # Loads quick reply shortcuts created by the current user.
  # The loaded topics will be sent through updateQuickReplyShortcuts.
  #
  # @return [TD::Types::Ok]
  def load_quick_reply_shortcuts
    broadcast('@type' => 'loadQuickReplyShortcuts')
  end
  
  # Loads more Saved Messages topics.
  # The loaded topics will be sent through updateSavedMessagesTopic.
  # Topics are sorted by their topic.order in descending order.
  # Returns a 404 error if all topics have been loaded.
  #
  # @param limit [Integer] The maximum number of topics to be loaded.
  #   For optimal performance, the number of loaded topics is chosen by TDLib and can be smaller than the specified
  #   limit, even if the end of the list is not reached.
  # @return [TD::Types::Ok]
  def load_saved_messages_topics(limit:)
    broadcast('@type' => 'loadSavedMessagesTopics',
              'limit' => limit)
  end
  
  # Closes the TDLib instance after a proper logout.
  # Requires an available network connection.
  # All local data will be destroyed.
  # After the logout completes, updateAuthorizationState with authorizationStateClosed will be sent.
  #
  # @return [TD::Types::Ok]
  def log_out
    broadcast('@type' => 'logOut')
  end
  
  # Informs TDLib that the chat is opened by the user.
  # Many useful activities depend on the chat being opened or closed (e.g., in supergroups and channels all updates are
  #   received only for opened chats).
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def open_chat(chat_id:)
    broadcast('@type'   => 'openChat',
              'chat_id' => chat_id)
  end
  
  # Informs TDLib that a chat was opened from the list of similar chats.
  # The method is independent of openChat and closeChat methods.
  #
  # @param chat_id [Integer] Identifier of the original chat, which similar chats were requested.
  # @param opened_chat_id [Integer] Identifier of the opened chat.
  # @return [TD::Types::Ok]
  def open_chat_similar_chat(chat_id:, opened_chat_id:)
    broadcast('@type'          => 'openChatSimilarChat',
              'chat_id'        => chat_id,
              'opened_chat_id' => opened_chat_id)
  end
  
  # Informs TDLib that the message content has been opened (e.g., the user has opened a photo, video, document,
  #   location or venue, or has listened to an audio file or voice note message).
  # An updateMessageContentOpened update will be generated if something has changed.
  #
  # @param chat_id [Integer] Chat identifier of the message.
  # @param message_id [Integer] Identifier of the message with the opened content.
  # @return [TD::Types::Ok]
  def open_message_content(chat_id:, message_id:)
    broadcast('@type'      => 'openMessageContent',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Informs TDLib that a story is opened and is being viewed by the user.
  #
  # @param story_sender_chat_id [Integer] The identifier of the sender of the opened story.
  # @param story_id [Integer] The identifier of the story.
  # @return [TD::Types::Ok]
  def open_story(story_sender_chat_id:, story_id:)
    broadcast('@type'                => 'openStory',
              'story_sender_chat_id' => story_sender_chat_id,
              'story_id'             => story_id)
  end
  
  # Informs TDLib that a Web App is being opened from the attachment menu, a botMenuButton button, an
  #   internalLinkTypeAttachmentMenuBot link, or an inlineKeyboardButtonTypeWebApp button.
  # For each bot, a confirmation alert about data sent to the bot must be shown once.
  #
  # @param chat_id [Integer] Identifier of the chat in which the Web App is opened.
  #   The Web App can't be opened in secret chats.
  # @param bot_user_id [Integer] Identifier of the bot, providing the Web App.
  # @param url [TD::Types::String] The URL from an {TD::Types::InlineKeyboardButtonType::WebApp} button, a
  #   {TD::Types::BotMenuButton} button, an {TD::Types::InternalLinkType::AttachmentMenuBot} link, or an empty string
  #   otherwise.
  # @param theme [TD::Types::ThemeParameters] Preferred Web App theme; pass null to use the default theme.
  # @param application_name [TD::Types::String] Short name of the current application; 0-64 English letters, digits,
  #   and underscores.
  # @param message_thread_id [Integer] If not 0, the message thread identifier in which the message will be sent.
  # @param reply_to [TD::Types::InputMessageReplyTo] Information about the message or story to be replied in the
  #   message sent by the Web App; pass null if none.
  # @return [TD::Types::WebAppInfo]
  def open_web_app(chat_id:, bot_user_id:, url:, theme:, application_name:, message_thread_id:, reply_to:)
    broadcast('@type'             => 'openWebApp',
              'chat_id'           => chat_id,
              'bot_user_id'       => bot_user_id,
              'url'               => url,
              'theme'             => theme,
              'application_name'  => application_name,
              'message_thread_id' => message_thread_id,
              'reply_to'          => reply_to)
  end
  
  # Optimizes storage usage, i.e.
  # deletes some files and returns new storage usage statistics.
  # Secret thumbnails can't be deleted.
  #
  # @param size [Integer] Limit on the total size of files after deletion, in bytes.
  #   Pass -1 to use the default limit.
  # @param ttl [Integer] Limit on the time that has passed since the last time a file was accessed (or creation time
  #   for some filesystems).
  #   Pass -1 to use the default limit.
  # @param count [Integer] Limit on the total number of files after deletion.
  #   Pass -1 to use the default limit.
  # @param immunity_delay [Integer] The amount of time after the creation of a file during which it can't be deleted,
  #   in seconds.
  #   Pass -1 to use the default value.
  # @param file_types [Array<TD::Types::FileType>] If non-empty, only files with the given types are considered.
  #   By default, all types except thumbnails, profile photos, stickers and wallpapers are deleted.
  # @param chat_ids [Array<Integer>] If non-empty, only files from the given chats are considered.
  #   Use 0 as chat identifier to delete files not belonging to any chat (e.g., profile photos).
  # @param exclude_chat_ids [Array<Integer>] If non-empty, files from the given chats are excluded.
  #   Use 0 as chat identifier to exclude all files not belonging to any chat (e.g., profile photos).
  # @param return_deleted_file_statistics [Boolean] Pass true if statistics about the files that were deleted must be
  #   returned instead of the whole storage usage statistics.
  #   Affects only returned statistics.
  # @param chat_limit [Integer] Same as in getStorageStatistics.
  #   Affects only returned statistics.
  # @return [TD::Types::StorageStatistics]
  def optimize_storage(size:, ttl:, count:, immunity_delay:, file_types:, chat_ids:, exclude_chat_ids:,
                       return_deleted_file_statistics:, chat_limit:)
    broadcast('@type'                          => 'optimizeStorage',
              'size'                           => size,
              'ttl'                            => ttl,
              'count'                          => count,
              'immunity_delay'                 => immunity_delay,
              'file_types'                     => file_types,
              'chat_ids'                       => chat_ids,
              'exclude_chat_ids'               => exclude_chat_ids,
              'return_deleted_file_statistics' => return_deleted_file_statistics,
              'chat_limit'                     => chat_limit)
  end
  
  # Parses Markdown entities in a human-friendly format, ignoring markup errors.
  # Can be called synchronously.
  #
  # @param text [TD::Types::FormattedText] The text to parse.
  #   For example, "__italic__ ~~strikethrough~~ ||spoiler|| **bold** `code` ```pre``` __[italic__
  #   text_url](telegram.org) __italic**bold italic__bold**".
  # @return [TD::Types::FormattedText]
  def parse_markdown(text:)
    broadcast('@type' => 'parseMarkdown',
              'text'  => text)
  end
  
  # Parses Bold, Italic, Underline, Strikethrough, Spoiler, CustomEmoji, BlockQuote, ExpandableBlockQuote, Code, Pre,
  #   PreCode, TextUrl and MentionName entities from a marked-up text.
  # Can be called synchronously.
  #
  # @param text [TD::Types::String] The text to parse.
  # @param parse_mode [TD::Types::TextParseMode] Text parse mode.
  # @return [TD::Types::FormattedText]
  def parse_text_entities(text:, parse_mode:)
    broadcast('@type'      => 'parseTextEntities',
              'text'       => text,
              'parse_mode' => parse_mode)
  end
  
  # Pins a message in a chat.
  # A message can be pinned only if messageProperties.can_be_pinned.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_id [Integer] Identifier of the new pinned message.
  # @param disable_notification [Boolean] Pass true to disable notification about the pinned message.
  #   Notifications are always disabled in channels and private chats.
  # @param only_for_self [Boolean] Pass true to pin the message only for self; private chats only.
  # @return [TD::Types::Ok]
  def pin_chat_message(chat_id:, message_id:, disable_notification:, only_for_self:)
    broadcast('@type'                => 'pinChatMessage',
              'chat_id'              => chat_id,
              'message_id'           => message_id,
              'disable_notification' => disable_notification,
              'only_for_self'        => only_for_self)
  end
  
  # Computes time needed to receive a response from a Telegram server through a proxy.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  #   Use 0 to ping a Telegram server without a proxy.
  # @return [TD::Types::Seconds]
  def ping_proxy(proxy_id:)
    broadcast('@type'    => 'pingProxy',
              'proxy_id' => proxy_id)
  end
  
  # Preliminary uploads a file to the cloud before sending it in a message, which can be useful for uploading of being
  #   recorded voice and video notes.
  # In all other cases there is no need to preliminary upload a file.
  # Updates updateFile will be used to notify about upload progress.
  # The upload will not be completed until the file is sent in a message.
  #
  # @param file [TD::Types::InputFile] File to upload.
  # @param file_type [TD::Types::FileType] File type; pass null if unknown.
  # @param priority [Integer] Priority of the upload (1-32).
  #   The higher the priority, the earlier the file will be uploaded.
  #   If the priorities of two files are equal, then the first one for which preliminaryUploadFile was called will be
  #   uploaded first.
  # @return [TD::Types::File]
  def preliminary_upload_file(file:, file_type:, priority:)
    broadcast('@type'     => 'preliminaryUploadFile',
              'file'      => file,
              'file_type' => file_type,
              'priority'  => priority)
  end
  
  # Process new chats added to a shareable chat folder by its owner.
  #
  # @param chat_folder_id [Integer] Chat folder identifier.
  # @param added_chat_ids [Array<Integer>] Identifiers of the new chats, which are added to the chat folder.
  #   The chats are automatically joined if they aren't joined yet.
  # @return [TD::Types::Ok]
  def process_chat_folder_new_chats(chat_folder_id:, added_chat_ids:)
    broadcast('@type'          => 'processChatFolderNewChats',
              'chat_folder_id' => chat_folder_id,
              'added_chat_ids' => added_chat_ids)
  end
  
  # Handles a pending join request in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_id [Integer] Identifier of the user that sent the request.
  # @param approve [Boolean] Pass true to approve the request; pass false to decline it.
  # @return [TD::Types::Ok]
  def process_chat_join_request(chat_id:, user_id:, approve:)
    broadcast('@type'   => 'processChatJoinRequest',
              'chat_id' => chat_id,
              'user_id' => user_id,
              'approve' => approve)
  end
  
  # Handles all pending join requests for a given link in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link for which to process join requests.
  #   If empty, all join requests will be processed.
  #   Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  # @param approve [Boolean] Pass true to approve all requests; pass false to decline them.
  # @return [TD::Types::Ok]
  def process_chat_join_requests(chat_id:, invite_link:, approve:)
    broadcast('@type'       => 'processChatJoinRequests',
              'chat_id'     => chat_id,
              'invite_link' => invite_link,
              'approve'     => approve)
  end
  
  # Handles a push notification.
  # Returns error with code 406 if the push notification is not supported and connection to the server is required to
  #   fetch new data.
  # Can be called before authorization.
  #
  # @param payload [TD::Types::String] JSON-encoded push notification payload with all fields sent by the server, and
  #   "google.sent_time" and "google.notification.sound" fields added.
  # @return [TD::Types::Ok]
  def process_push_notification(payload:)
    broadcast('@type'   => 'processPushNotification',
              'payload' => payload)
  end
  
  # Rates recognized speech in a video note or a voice note message.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param is_good [Boolean] Pass true if the speech recognition is good.
  # @return [TD::Types::Ok]
  def rate_speech_recognition(chat_id:, message_id:, is_good:)
    broadcast('@type'      => 'rateSpeechRecognition',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'is_good'    => is_good)
  end
  
  # Marks all mentions in a chat as read.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def read_all_chat_mentions(chat_id:)
    broadcast('@type'   => 'readAllChatMentions',
              'chat_id' => chat_id)
  end
  
  # Marks all reactions in a chat or a forum topic as read.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def read_all_chat_reactions(chat_id:)
    broadcast('@type'   => 'readAllChatReactions',
              'chat_id' => chat_id)
  end
  
  # Marks all mentions in a forum topic as read.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] Message thread identifier in which mentions are marked as read.
  # @return [TD::Types::Ok]
  def read_all_message_thread_mentions(chat_id:, message_thread_id:)
    broadcast('@type'             => 'readAllMessageThreadMentions',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Marks all reactions in a forum topic as read.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] Message thread identifier in which reactions are marked as read.
  # @return [TD::Types::Ok]
  def read_all_message_thread_reactions(chat_id:, message_thread_id:)
    broadcast('@type'             => 'readAllMessageThreadReactions',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Traverse all chats in a chat list and marks all messages in the chats as read.
  #
  # @param chat_list [TD::Types::ChatList] Chat list in which to mark all chats as read.
  # @return [TD::Types::Ok]
  def read_chat_list(chat_list:)
    broadcast('@type'     => 'readChatList',
              'chat_list' => chat_list)
  end
  
  # Reads a part of a file from the TDLib file cache and returns read bytes.
  # This method is intended to be used only if the application has no direct access to TDLib's file system, because it
  #   is usually slower than a direct read from the file.
  #
  # @param file_id [Integer] Identifier of the file.
  #   The file must be located in the TDLib file cache.
  # @param offset [Integer] The offset from which to read the file.
  # @param count [Integer] Number of bytes to read.
  #   An error will be returned if there are not enough bytes available in the file from the specified position.
  #   Pass 0 to read all available data from the specified position.
  # @return [TD::Types::FilePart]
  def read_file_part(file_id:, offset:, count:)
    broadcast('@type'   => 'readFilePart',
              'file_id' => file_id,
              'offset'  => offset,
              'count'   => count)
  end
  
  # Readds quick reply messages which failed to add.
  # Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in
  #   messageSendingStateFailed.retry_after time passed.
  # If a message is readded, the corresponding failed to send message is deleted.
  # Returns the sent messages in the same order as the message identifiers passed in message_ids.
  # If a message can't be readded, null will be returned instead of the message.
  #
  # @param shortcut_name [TD::Types::String] Name of the target shortcut.
  # @param message_ids [Array<Integer>] Identifiers of the quick reply messages to readd.
  #   Message identifiers must be in a strictly increasing order.
  # @return [TD::Types::QuickReplyMessages]
  def readd_quick_reply_shortcut_messages(shortcut_name:, message_ids:)
    broadcast('@type'         => 'readdQuickReplyShortcutMessages',
              'shortcut_name' => shortcut_name,
              'message_ids'   => message_ids)
  end
  
  # Recognizes speech in a video note or a voice note message.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  #   Use messageProperties.can_recognize_speech to check whether the message is suitable.
  # @return [TD::Types::Ok]
  def recognize_speech(chat_id:, message_id:)
    broadcast('@type'      => 'recognizeSpeech',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Recovers the 2-step verification password with a password recovery code sent to an email address that was
  #   previously set up.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  # @param recovery_code [TD::Types::String] Recovery code to check.
  # @param new_password [TD::Types::String, nil] New 2-step verification password of the user; may be empty to remove
  #   the password.
  # @param new_hint [TD::Types::String, nil] New password hint; may be empty.
  # @return [TD::Types::Ok]
  def recover_authentication_password(recovery_code:, new_password: nil, new_hint: nil)
    broadcast('@type'         => 'recoverAuthenticationPassword',
              'recovery_code' => recovery_code,
              'new_password'  => new_password,
              'new_hint'      => new_hint)
  end
  
  # Recovers the 2-step verification password using a recovery code sent to an email address that was previously set
  #   up.
  #
  # @param recovery_code [TD::Types::String] Recovery code to check.
  # @param new_password [TD::Types::String, nil] New 2-step verification password of the user; may be empty to remove
  #   the password.
  # @param new_hint [TD::Types::String, nil] New password hint; may be empty.
  # @return [TD::Types::PasswordState]
  def recover_password(recovery_code:, new_password: nil, new_hint: nil)
    broadcast('@type'         => 'recoverPassword',
              'recovery_code' => recovery_code,
              'new_password'  => new_password,
              'new_hint'      => new_hint)
  end
  
  # Refunds a previously done payment in Telegram Stars.
  #
  # @param user_id [Integer] Identifier of the user that did the payment.
  # @param telegram_payment_charge_id [TD::Types::String] Telegram payment identifier.
  # @return [TD::Types::Ok]
  def refund_star_payment(user_id:, telegram_payment_charge_id:)
    broadcast('@type'                      => 'refundStarPayment',
              'user_id'                    => user_id,
              'telegram_payment_charge_id' => telegram_payment_charge_id)
  end
  
  # Registers the currently used device for receiving push notifications.
  # Returns a globally unique identifier of the push notification subscription.
  #
  # @param device_token [TD::Types::DeviceToken] Device token.
  # @param other_user_ids [Array<Integer>] List of user identifiers of other users currently using the application.
  # @return [TD::Types::PushReceiverId]
  def register_device(device_token:, other_user_ids:)
    broadcast('@type'          => 'registerDevice',
              'device_token'   => device_token,
              'other_user_ids' => other_user_ids)
  end
  
  # Finishes user registration.
  # Works only when the current authorization state is authorizationStateWaitRegistration.
  #
  # @param first_name [TD::Types::String] The first name of the user; 1-64 characters.
  # @param last_name [TD::Types::String] The last name of the user; 0-64 characters.
  # @param disable_notification [Boolean] Pass true to disable notification about the current user joining Telegram for
  #   other users that added them to contact list.
  # @return [TD::Types::Ok]
  def register_user(first_name:, last_name:, disable_notification:)
    broadcast('@type'                => 'registerUser',
              'first_name'           => first_name,
              'last_name'            => last_name,
              'disable_notification' => disable_notification)
  end
  
  # Removes all files from the file download list.
  #
  # @param only_active [Boolean] Pass true to remove only active downloads, including paused.
  # @param only_completed [Boolean] Pass true to remove only completed downloads.
  # @param delete_from_cache [Boolean] Pass true to delete the file from the TDLib file cache.
  # @return [TD::Types::Ok]
  def remove_all_files_from_downloads(only_active:, only_completed:, delete_from_cache:)
    broadcast('@type'             => 'removeAllFilesFromDownloads',
              'only_active'       => only_active,
              'only_completed'    => only_completed,
              'delete_from_cache' => delete_from_cache)
  end
  
  # Removes the connected business bot from a specific chat by adding the chat to businessRecipients.excluded_chat_ids.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def remove_business_connected_bot_from_chat(chat_id:)
    broadcast('@type'   => 'removeBusinessConnectedBotFromChat',
              'chat_id' => chat_id)
  end
  
  # Removes a chat action bar without any other action.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def remove_chat_action_bar(chat_id:)
    broadcast('@type'   => 'removeChatActionBar',
              'chat_id' => chat_id)
  end
  
  # Removes users from the contact list.
  #
  # @param user_ids [Array<Integer>] Identifiers of users to be deleted.
  # @return [TD::Types::Ok]
  def remove_contacts(user_ids:)
    broadcast('@type'    => 'removeContacts',
              'user_ids' => user_ids)
  end
  
  # Removes a sticker from the list of favorite stickers.
  #
  # @param sticker [TD::Types::InputFile] Sticker file to delete from the list.
  # @return [TD::Types::Ok]
  def remove_favorite_sticker(sticker:)
    broadcast('@type'   => 'removeFavoriteSticker',
              'sticker' => sticker)
  end
  
  # Removes a file from the file download list.
  #
  # @param file_id [Integer] Identifier of the downloaded file.
  # @param delete_from_cache [Boolean] Pass true to delete the file from the TDLib file cache.
  # @return [TD::Types::Ok]
  def remove_file_from_downloads(file_id:, delete_from_cache:)
    broadcast('@type'             => 'removeFileFromDownloads',
              'file_id'           => file_id,
              'delete_from_cache' => delete_from_cache)
  end
  
  # Removes background from the list of installed backgrounds.
  #
  # @param background_id [Integer] The background identifier.
  # @return [TD::Types::Ok]
  def remove_installed_background(background_id:)
    broadcast('@type'         => 'removeInstalledBackground',
              'background_id' => background_id)
  end
  
  # Removes a reaction from a message.
  # A chosen reaction can always be removed.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param reaction_type [TD::Types::ReactionType] Type of the reaction to remove.
  #   The paid reaction can't be removed.
  # @return [TD::Types::Ok]
  def remove_message_reaction(chat_id:, message_id:, reaction_type:)
    broadcast('@type'         => 'removeMessageReaction',
              'chat_id'       => chat_id,
              'message_id'    => message_id,
              'reaction_type' => reaction_type)
  end
  
  # Removes an active notification from notification list.
  # Needs to be called only if the notification is removed by the current user.
  #
  # @param notification_group_id [Integer] Identifier of notification group to which the notification belongs.
  # @param notification_id [Integer] Identifier of removed notification.
  # @return [TD::Types::Ok]
  def remove_notification(notification_group_id:, notification_id:)
    broadcast('@type'                 => 'removeNotification',
              'notification_group_id' => notification_group_id,
              'notification_id'       => notification_id)
  end
  
  # Removes a group of active notifications.
  # Needs to be called only if the notification group is removed by the current user.
  #
  # @param notification_group_id [Integer] Notification group identifier.
  # @param max_notification_id [Integer] The maximum identifier of removed notifications.
  # @return [TD::Types::Ok]
  def remove_notification_group(notification_group_id:, max_notification_id:)
    broadcast('@type'                 => 'removeNotificationGroup',
              'notification_group_id' => notification_group_id,
              'max_notification_id'   => max_notification_id)
  end
  
  # Removes all pending paid reactions on a message.
  # Can be called within 5 seconds after the last addPaidMessageReaction call.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @return [TD::Types::Ok]
  def remove_pending_paid_message_reactions(chat_id:, message_id:)
    broadcast('@type'      => 'removePendingPaidMessageReactions',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Removes a proxy server.
  # Can be called before authorization.
  #
  # @param proxy_id [Integer] Proxy identifier.
  # @return [TD::Types::Ok]
  def remove_proxy(proxy_id:)
    broadcast('@type'    => 'removeProxy',
              'proxy_id' => proxy_id)
  end
  
  # Removes a hashtag from the list of recently used hashtags.
  #
  # @param hashtag [TD::Types::String] Hashtag to delete.
  # @return [TD::Types::Ok]
  def remove_recent_hashtag(hashtag:)
    broadcast('@type'   => 'removeRecentHashtag',
              'hashtag' => hashtag)
  end
  
  # Removes a sticker from the list of recently used stickers.
  #
  # @param is_attached [Boolean] Pass true to remove the sticker from the list of stickers recently attached to photo
  #   or video files; pass false to remove the sticker from the list of recently sent stickers.
  # @param sticker [TD::Types::InputFile] Sticker file to delete.
  # @return [TD::Types::Ok]
  def remove_recent_sticker(is_attached:, sticker:)
    broadcast('@type'       => 'removeRecentSticker',
              'is_attached' => is_attached,
              'sticker'     => sticker)
  end
  
  # Removes a chat from the list of recently found chats.
  #
  # @param chat_id [Integer] Identifier of the chat to be removed.
  # @return [TD::Types::Ok]
  def remove_recently_found_chat(chat_id:)
    broadcast('@type'   => 'removeRecentlyFoundChat',
              'chat_id' => chat_id)
  end
  
  # Removes an animation from the list of saved animations.
  #
  # @param animation [TD::Types::InputFile] Animation file to be removed.
  # @return [TD::Types::Ok]
  def remove_saved_animation(animation:)
    broadcast('@type'     => 'removeSavedAnimation',
              'animation' => animation)
  end
  
  # Removes a notification sound from the list of saved notification sounds.
  #
  # @param notification_sound_id [Integer] Identifier of the notification sound.
  # @return [TD::Types::Ok]
  def remove_saved_notification_sound(notification_sound_id:)
    broadcast('@type'                 => 'removeSavedNotificationSound',
              'notification_sound_id' => notification_sound_id)
  end
  
  # Removes a hashtag or a cashtag from the list of recently searched for hashtags or cashtags.
  #
  # @param tag [TD::Types::String] Hashtag or cashtag to delete.
  # @return [TD::Types::Ok]
  def remove_searched_for_tag(tag:)
    broadcast('@type' => 'removeSearchedForTag',
              'tag'   => tag)
  end
  
  # Removes a sticker from the set to which it belongs.
  # The sticker set must be owned by the current user.
  #
  # @param sticker [TD::Types::InputFile] Sticker to remove from the set.
  # @return [TD::Types::Ok]
  def remove_sticker_from_set(sticker:)
    broadcast('@type'   => 'removeStickerFromSet',
              'sticker' => sticker)
  end
  
  # Removes a chat from the list of frequently used chats.
  # Supported only if the chat info database is enabled.
  #
  # @param category [TD::Types::TopChatCategory] Category of frequently used chats.
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::Ok]
  def remove_top_chat(category:, chat_id:)
    broadcast('@type'    => 'removeTopChat',
              'category' => category,
              'chat_id'  => chat_id)
  end
  
  # Changes order of active usernames of the current user.
  #
  # @param usernames [Array<TD::Types::String>] The new order of active usernames.
  #   All currently active usernames must be specified.
  # @return [TD::Types::Ok]
  def reorder_active_usernames(usernames:)
    broadcast('@type'     => 'reorderActiveUsernames',
              'usernames' => usernames)
  end
  
  # Changes order of active usernames of a bot.
  # Can be called only if userTypeBot.can_be_edited == true.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param usernames [Array<TD::Types::String>] The new order of active usernames.
  #   All currently active usernames must be specified.
  # @return [TD::Types::Ok]
  def reorder_bot_active_usernames(bot_user_id:, usernames:)
    broadcast('@type'       => 'reorderBotActiveUsernames',
              'bot_user_id' => bot_user_id,
              'usernames'   => usernames)
  end
  
  # Changes order of media previews in the list of media previews of a bot.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  #   The bot must be owned and must have the main Web App.
  # @param language_code [TD::Types::String] Language code of the media previews to reorder.
  # @param file_ids [Array<Integer>] File identifiers of the media in the new order.
  # @return [TD::Types::Ok]
  def reorder_bot_media_previews(bot_user_id:, language_code:, file_ids:)
    broadcast('@type'         => 'reorderBotMediaPreviews',
              'bot_user_id'   => bot_user_id,
              'language_code' => language_code,
              'file_ids'      => file_ids)
  end
  
  # Changes the order of chat folders.
  #
  # @param chat_folder_ids [Array<Integer>] Identifiers of chat folders in the new correct order.
  # @param main_chat_list_position [Integer] Position of the main chat list among chat folders, 0-based.
  #   Can be non-zero only for Premium users.
  # @return [TD::Types::Ok]
  def reorder_chat_folders(chat_folder_ids:, main_chat_list_position:)
    broadcast('@type'                   => 'reorderChatFolders',
              'chat_folder_ids'         => chat_folder_ids,
              'main_chat_list_position' => main_chat_list_position)
  end
  
  # Changes the order of installed sticker sets.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to reorder.
  # @param sticker_set_ids [Array<Integer>] Identifiers of installed sticker sets in the new correct order.
  # @return [TD::Types::Ok]
  def reorder_installed_sticker_sets(sticker_type:, sticker_set_ids:)
    broadcast('@type'           => 'reorderInstalledStickerSets',
              'sticker_type'    => sticker_type,
              'sticker_set_ids' => sticker_set_ids)
  end
  
  # Changes the order of quick reply shortcuts.
  #
  # @param shortcut_ids [Array<Integer>] The new order of quick reply shortcuts.
  # @return [TD::Types::Ok]
  def reorder_quick_reply_shortcuts(shortcut_ids:)
    broadcast('@type'        => 'reorderQuickReplyShortcuts',
              'shortcut_ids' => shortcut_ids)
  end
  
  # Changes order of active usernames of a supergroup or channel, requires owner privileges in the supergroup or
  #   channel.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param usernames [Array<TD::Types::String>] The new order of active usernames.
  #   All currently active usernames must be specified.
  # @return [TD::Types::Ok]
  def reorder_supergroup_active_usernames(supergroup_id:, usernames:)
    broadcast('@type'         => 'reorderSupergroupActiveUsernames',
              'supergroup_id' => supergroup_id,
              'usernames'     => usernames)
  end
  
  # Replaces current primary invite link for a chat with a new primary invite link.
  # Available for basic groups, supergroups, and channels.
  # Requires administrator privileges and can_invite_users right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::ChatInviteLink]
  def replace_primary_chat_invite_link(chat_id:)
    broadcast('@type'   => 'replacePrimaryChatInviteLink',
              'chat_id' => chat_id)
  end
  
  # Replaces existing sticker in a set.
  # The function is equivalent to removeStickerFromSet, then addStickerToSet, then setStickerPositionInSet.
  #
  # @param user_id [Integer] Sticker set owner; ignored for regular users.
  # @param name [TD::Types::String] Sticker set name.
  #   The sticker set must be owned by the current user.
  # @param old_sticker [TD::Types::InputFile] Sticker to remove from the set.
  # @param new_sticker [TD::Types::InputSticker] Sticker to add to the set.
  # @return [TD::Types::Ok]
  def replace_sticker_in_set(user_id:, name:, old_sticker:, new_sticker:)
    broadcast('@type'       => 'replaceStickerInSet',
              'user_id'     => user_id,
              'name'        => name,
              'old_sticker' => old_sticker,
              'new_sticker' => new_sticker)
  end
  
  # Replaces the current RTMP URL for streaming to the chat; requires owner privileges.
  #
  # @param chat_id [Integer] Chat identifier.
  # @return [TD::Types::RtmpUrl]
  def replace_video_chat_rtmp_url(chat_id:)
    broadcast('@type'   => 'replaceVideoChatRtmpUrl',
              'chat_id' => chat_id)
  end
  
  # Reports that authentication code wasn't delivered via SMS; for official mobile applications only.
  # Works only when the current authorization state is authorizationStateWaitCode.
  #
  # @param mobile_network_code [TD::Types::String] Current mobile network code.
  # @return [TD::Types::Ok]
  def report_authentication_code_missing(mobile_network_code:)
    broadcast('@type'               => 'reportAuthenticationCodeMissing',
              'mobile_network_code' => mobile_network_code)
  end
  
  # Reports a chat to the Telegram moderators.
  # A chat can be reported only from the chat action bar, or if chat.can_be_reported.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_ids [Array<Integer>, nil] Identifiers of reported messages; may be empty to report the whole chat.
  #   Use messageProperties.can_be_reported to check whether the message can be reported.
  # @param reason [TD::Types::ReportReason] The reason for reporting the chat.
  # @param text [TD::Types::String] Additional report details; 0-1024 characters.
  # @return [TD::Types::Ok]
  def report_chat(chat_id:, message_ids: nil, reason:, text:)
    broadcast('@type'       => 'reportChat',
              'chat_id'     => chat_id,
              'message_ids' => message_ids,
              'reason'      => reason,
              'text'        => text)
  end
  
  # Reports a chat photo to the Telegram moderators.
  # A chat photo can be reported only if chat.can_be_reported.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param file_id [Integer] Identifier of the photo to report.
  #   Only full photos from {TD::Types::ChatPhoto} can be reported.
  # @param reason [TD::Types::ReportReason] The reason for reporting the chat photo.
  # @param text [TD::Types::String] Additional report details; 0-1024 characters.
  # @return [TD::Types::Ok]
  def report_chat_photo(chat_id:, file_id:, reason:, text:)
    broadcast('@type'   => 'reportChatPhoto',
              'chat_id' => chat_id,
              'file_id' => file_id,
              'reason'  => reason,
              'text'    => text)
  end
  
  # Reports a sponsored message to Telegram moderators.
  #
  # @param chat_id [Integer] Chat identifier of the sponsored message.
  # @param message_id [Integer] Identifier of the sponsored message.
  # @param option_id [String, nil] Option identifier chosen by the user; leave empty for the initial request.
  # @return [TD::Types::ReportChatSponsoredMessageResult]
  def report_chat_sponsored_message(chat_id:, message_id:, option_id: nil)
    broadcast('@type'      => 'reportChatSponsoredMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'option_id'  => option_id)
  end
  
  # Reports reactions set on a message to the Telegram moderators.
  # Reactions on a message can be reported only if messageProperties.can_report_reactions.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_id [Integer] Message identifier.
  # @param sender_id [TD::Types::MessageSender] Identifier of the sender, which added the reaction.
  # @return [TD::Types::Ok]
  def report_message_reactions(chat_id:, message_id:, sender_id:)
    broadcast('@type'      => 'reportMessageReactions',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'sender_id'  => sender_id)
  end
  
  # Reports that authentication code wasn't delivered via SMS to the specified phone number; for official mobile
  #   applications only.
  #
  # @param mobile_network_code [TD::Types::String] Current mobile network code.
  # @return [TD::Types::Ok]
  def report_phone_number_code_missing(mobile_network_code:)
    broadcast('@type'               => 'reportPhoneNumberCodeMissing',
              'mobile_network_code' => mobile_network_code)
  end
  
  # Reports a story to the Telegram moderators.
  #
  # @param story_sender_chat_id [Integer] The identifier of the sender of the story to report.
  # @param story_id [Integer] The identifier of the story to report.
  # @param reason [TD::Types::ReportReason] The reason for reporting the story.
  # @param text [TD::Types::String] Additional report details; 0-1024 characters.
  # @return [TD::Types::Ok]
  def report_story(story_sender_chat_id:, story_id:, reason:, text:)
    broadcast('@type'                => 'reportStory',
              'story_sender_chat_id' => story_sender_chat_id,
              'story_id'             => story_id,
              'reason'               => reason,
              'text'                 => text)
  end
  
  # Reports a false deletion of a message by aggressive anti-spam checks; requires administrator rights in the
  #   supergroup.
  # Can be called only for messages from chatEventMessageDeleted with can_report_anti_spam_false_positive == true.
  #
  # @param supergroup_id [Integer] Supergroup identifier.
  # @param message_id [Integer] Identifier of the erroneously deleted message from chatEventMessageDeleted.
  # @return [TD::Types::Ok]
  def report_supergroup_anti_spam_false_positive(supergroup_id:, message_id:)
    broadcast('@type'         => 'reportSupergroupAntiSpamFalsePositive',
              'supergroup_id' => supergroup_id,
              'message_id'    => message_id)
  end
  
  # Reports messages in a supergroup as spam; requires administrator rights in the supergroup.
  #
  # @param supergroup_id [Integer] Supergroup identifier.
  # @param message_ids [Array<Integer>] Identifiers of messages to report.
  #   Use messageProperties.can_be_reported to check whether the message can be reported.
  # @return [TD::Types::Ok]
  def report_supergroup_spam(supergroup_id:, message_ids:)
    broadcast('@type'         => 'reportSupergroupSpam',
              'supergroup_id' => supergroup_id,
              'message_ids'   => message_ids)
  end
  
  # Requests to send a 2-step verification password recovery code to an email address that was previously set up.
  # Works only when the current authorization state is authorizationStateWaitPassword.
  #
  # @return [TD::Types::Ok]
  def request_authentication_password_recovery
    broadcast('@type' => 'requestAuthenticationPasswordRecovery')
  end
  
  # Requests to send a 2-step verification password recovery code to an email address that was previously set up.
  #
  # @return [TD::Types::EmailAddressAuthenticationCodeInfo]
  def request_password_recovery
    broadcast('@type' => 'requestPasswordRecovery')
  end
  
  # Requests QR code authentication by scanning a QR code on another logged in device.
  # Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending
  #   authentication query and the current authorization state is authorizationStateWaitEmailAddress,
  #   authorizationStateWaitEmailCode, authorizationStateWaitCode, authorizationStateWaitRegistration, or
  #   authorizationStateWaitPassword.
  #
  # @param other_user_ids [Array<Integer>] List of user identifiers of other users currently using the application.
  # @return [TD::Types::Ok]
  def request_qr_code_authentication(other_user_ids:)
    broadcast('@type'          => 'requestQrCodeAuthentication',
              'other_user_ids' => other_user_ids)
  end
  
  # Resends an authentication code to the user.
  # Works only when the current authorization state is authorizationStateWaitCode, the next_code_type of the result is
  #   not null and the server-specified timeout has passed, or when the current authorization state is
  #   authorizationStateWaitEmailCode.
  #
  # @param reason [TD::Types::ResendCodeReason] Reason of code resending; pass null if unknown.
  # @return [TD::Types::Ok]
  def resend_authentication_code(reason:)
    broadcast('@type'  => 'resendAuthenticationCode',
              'reason' => reason)
  end
  
  # Resends the code to verify an email address to be added to a user's Telegram Passport.
  #
  # @return [TD::Types::EmailAddressAuthenticationCodeInfo]
  def resend_email_address_verification_code
    broadcast('@type' => 'resendEmailAddressVerificationCode')
  end
  
  # Resends the login email address verification code.
  #
  # @return [TD::Types::EmailAddressAuthenticationCodeInfo]
  def resend_login_email_address_code
    broadcast('@type' => 'resendLoginEmailAddressCode')
  end
  
  # Resends messages which failed to send.
  # Can be called only for messages for which messageSendingStateFailed.can_retry is true and after specified in
  #   messageSendingStateFailed.retry_after time passed.
  # If a message is re-sent, the corresponding failed to send message is deleted.
  # Returns the sent messages in the same order as the message identifiers passed in message_ids.
  # If a message can't be re-sent, null will be returned instead of the message.
  #
  # @param chat_id [Integer] Identifier of the chat to send messages.
  # @param message_ids [Array<Integer>] Identifiers of the messages to resend.
  #   Message identifiers must be in a strictly increasing order.
  # @param quote [TD::Types::InputTextQuote] New manually chosen quote from the message to be replied; pass null if
  #   none.
  #   Ignored if more than one message is re-sent, or if messageSendingStateFailed.need_another_reply_quote == false.
  # @return [TD::Types::Messages]
  def resend_messages(chat_id:, message_ids:, quote:)
    broadcast('@type'       => 'resendMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids,
              'quote'       => quote)
  end
  
  # Resends the authentication code sent to a phone number.
  # Works only if the previously received authenticationCodeInfo next_code_type was not null and the server-specified
  #   timeout has passed.
  #
  # @param reason [TD::Types::ResendCodeReason] Reason of code resending; pass null if unknown.
  # @return [TD::Types::AuthenticationCodeInfo]
  def resend_phone_number_code(reason:)
    broadcast('@type'  => 'resendPhoneNumberCode',
              'reason' => reason)
  end
  
  # Resends the 2-step verification recovery email address verification code.
  #
  # @return [TD::Types::PasswordState]
  def resend_recovery_email_address_code
    broadcast('@type' => 'resendRecoveryEmailAddressCode')
  end
  
  # Resets all chat and scope notification settings to their default values.
  # By default, all chats are unmuted and message previews are shown.
  #
  # @return [TD::Types::Ok]
  def reset_all_notification_settings
    broadcast('@type' => 'resetAllNotificationSettings')
  end
  
  # Resets the login email address.
  # May return an error with a message "TASK_ALREADY_EXISTS" if reset is still pending.
  # Works only when the current authorization state is authorizationStateWaitEmailCode and
  #   authorization_state.can_reset_email_address == true.
  #
  # @return [TD::Types::Ok]
  def reset_authentication_email_address
    broadcast('@type' => 'resetAuthenticationEmailAddress')
  end
  
  # Resets list of installed backgrounds to its default value.
  #
  # @return [TD::Types::Ok]
  def reset_installed_backgrounds
    broadcast('@type' => 'resetInstalledBackgrounds')
  end
  
  # Resets all network data usage statistics to zero.
  # Can be called before authorization.
  #
  # @return [TD::Types::Ok]
  def reset_network_statistics
    broadcast('@type' => 'resetNetworkStatistics')
  end
  
  # Removes 2-step verification password without previous password and access to recovery email address.
  # The password can't be reset immediately and the request needs to be repeated after the specified time.
  #
  # @return [TD::Types::ResetPasswordResult]
  def reset_password
    broadcast('@type' => 'resetPassword')
  end
  
  # Reuses an active subscription and joins the subscribed chat again.
  #
  # @param subscription_id [TD::Types::String] Identifier of the subscription.
  # @return [TD::Types::Ok]
  def reuse_star_subscription(subscription_id:)
    broadcast('@type'           => 'reuseStarSubscription',
              'subscription_id' => subscription_id)
  end
  
  # Revokes invite link for a chat.
  # Available for basic groups, supergroups, and channels.
  # Requires administrator privileges and can_invite_users right in the chat for own links and owner privileges for
  #   other links.
  # If a primary link is revoked, then additionally to the revoked link returns new primary link.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param invite_link [TD::Types::String] Invite link to be revoked.
  # @return [TD::Types::ChatInviteLinks]
  def revoke_chat_invite_link(chat_id:, invite_link:)
    broadcast('@type'       => 'revokeChatInviteLink',
              'chat_id'     => chat_id,
              'invite_link' => invite_link)
  end
  
  # Revokes invite link for a group call.
  # Requires groupCall.can_be_managed group call flag.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def revoke_group_call_invite_link(group_call_id:)
    broadcast('@type'         => 'revokeGroupCallInviteLink',
              'group_call_id' => group_call_id)
  end
  
  # Saves application log event on the server.
  # Can be called before authorization.
  #
  # @param type [TD::Types::String] Event type.
  # @param chat_id [Integer] Optional chat identifier, associated with the event.
  # @param data [TD::Types::JsonValue] The log event data.
  # @return [TD::Types::Ok]
  def save_application_log_event(type:, chat_id:, data:)
    broadcast('@type'   => 'saveApplicationLogEvent',
              'type'    => type,
              'chat_id' => chat_id,
              'data'    => data)
  end
  
  # Searches for a background by its name.
  #
  # @param name [TD::Types::String] The name of the background.
  # @return [TD::Types::Background]
  def search_background(name:)
    broadcast('@type' => 'searchBackground',
              'name'  => name)
  end
  
  # Searches for call messages.
  # Returns the results in reverse chronological order (i.e., in order of decreasing message_id).
  # For optimal performance, the number of returned messages is chosen by TDLib.
  #
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of messages to be returned; up to 100.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @param only_missed [Boolean] Pass true to search only for messages with missed/declined calls.
  # @return [TD::Types::FoundMessages]
  def search_call_messages(offset:, limit:, only_missed:)
    broadcast('@type'       => 'searchCallMessages',
              'offset'      => offset,
              'limit'       => limit,
              'only_missed' => only_missed)
  end
  
  # Searches for a specified query in the first name, last name and usernames of the members of a specified chat.
  # Requires administrator rights if the chat is a channel.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param query [TD::Types::String] Query to search for.
  # @param limit [Integer] The maximum number of users to be returned; up to 200.
  # @param filter [TD::Types::ChatMembersFilter] The type of users to search for; pass null to search among all chat
  #   members.
  # @return [TD::Types::ChatMembers]
  def search_chat_members(chat_id:, query:, limit:, filter:)
    broadcast('@type'   => 'searchChatMembers',
              'chat_id' => chat_id,
              'query'   => query,
              'limit'   => limit,
              'filter'  => filter)
  end
  
  # Searches for messages with given words in the chat.
  # Returns the results in reverse chronological order, i.e.
  # in order of decreasing message_id.
  # Cannot be used in secret chats with a non-empty query (searchSecretMessages must be used instead), or without an
  #   enabled message database.
  # For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # A combination of query, sender_id, filter and message_thread_id search criteria is expected to be supported, only
  #   if it is required for Telegram official application implementation.
  #
  # @param chat_id [Integer] Identifier of the chat in which to search messages.
  # @param query [TD::Types::String] Query to search for.
  # @param sender_id [TD::Types::MessageSender] Identifier of the sender of messages to search for; pass null to search
  #   for messages from any sender.
  #   Not supported in secret chats.
  # @param from_message_id [Integer] Identifier of the message starting from which history must be fetched; use 0 to
  #   get results from the last message.
  # @param offset [Integer] Specify 0 to get results from exactly the message from_message_id or a negative offset to
  #   get the specified message and some newer messages.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   If the offset is negative, the limit must be greater than -offset.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @param filter [TD::Types::SearchMessagesFilter] Additional filter for messages to search; pass null to search for
  #   all messages.
  # @param message_thread_id [Integer] If not 0, only messages in the specified thread will be returned; supergroups
  #   only.
  # @param saved_messages_topic_id [Integer] If not 0, only messages in the specified Saved Messages topic will be
  #   returned; pass 0 to return all messages, or for chats other than Saved Messages.
  # @return [TD::Types::FoundChatMessages]
  def search_chat_messages(chat_id:, query:, sender_id:, from_message_id:, offset:, limit:, filter:, message_thread_id:,
                           saved_messages_topic_id:)
    broadcast('@type'                   => 'searchChatMessages',
              'chat_id'                 => chat_id,
              'query'                   => query,
              'sender_id'               => sender_id,
              'from_message_id'         => from_message_id,
              'offset'                  => offset,
              'limit'                   => limit,
              'filter'                  => filter,
              'message_thread_id'       => message_thread_id,
              'saved_messages_topic_id' => saved_messages_topic_id)
  end
  
  # Returns information about the recent locations of chat members that were sent to the chat.
  # Returns up to 1 location message per user.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param limit [Integer] The maximum number of messages to be returned.
  # @return [TD::Types::Messages]
  def search_chat_recent_location_messages(chat_id:, limit:)
    broadcast('@type'   => 'searchChatRecentLocationMessages',
              'chat_id' => chat_id,
              'limit'   => limit)
  end
  
  # Searches for the specified query in the title and username of already known chats; this is an offline request.
  # Returns chats in the order seen in the main chat list.
  #
  # @param query [TD::Types::String] Query to search for.
  #   If the query is empty, returns up to 50 recently found chats.
  # @param limit [Integer] The maximum number of chats to be returned.
  # @return [TD::Types::Chats]
  def search_chats(query:, limit:)
    broadcast('@type' => 'searchChats',
              'query' => query,
              'limit' => limit)
  end
  
  # Returns a list of users and location-based supergroups nearby.
  # The list of users nearby will be updated for 60 seconds after the request by the updates updateUsersNearby.
  # The request must be sent again every 25 seconds with adjusted location to not miss new chats.
  #
  # @param location [TD::Types::Location] Current user location.
  # @return [TD::Types::ChatsNearby]
  def search_chats_nearby(location:)
    broadcast('@type'    => 'searchChatsNearby',
              'location' => location)
  end
  
  # Searches for the specified query in the title and username of already known chats via request to the server.
  # Returns chats in the order seen in the main chat list.
  #
  # @param query [TD::Types::String] Query to search for.
  # @param limit [Integer] The maximum number of chats to be returned.
  # @return [TD::Types::Chats]
  def search_chats_on_server(query:, limit:)
    broadcast('@type' => 'searchChatsOnServer',
              'query' => query,
              'limit' => limit)
  end
  
  # Searches for the specified query in the first names, last names and usernames of the known user contacts.
  #
  # @param query [TD::Types::String, nil] Query to search for; may be empty to return all contacts.
  # @param limit [Integer] The maximum number of users to be returned.
  # @return [TD::Types::Users]
  def search_contacts(query: nil, limit:)
    broadcast('@type' => 'searchContacts',
              'query' => query,
              'limit' => limit)
  end
  
  # Searches for emojis by keywords.
  # Supported only if the file database is enabled.
  # Order of results is unspecified.
  #
  # @param text [TD::Types::String] Text to search for.
  # @param input_language_codes [Array<TD::Types::String>, nil] List of possible IETF language tags of the user's input
  #   language; may be empty if unknown.
  # @return [TD::Types::EmojiKeywords]
  def search_emojis(text:, input_language_codes: nil)
    broadcast('@type'                => 'searchEmojis',
              'text'                 => text,
              'input_language_codes' => input_language_codes)
  end
  
  # Searches for files in the file download list or recently downloaded files from the list.
  #
  # @param query [TD::Types::String, nil] Query to search for; may be empty to return all downloaded files.
  # @param only_active [Boolean] Pass true to search only for active downloads, including paused.
  # @param only_completed [Boolean] Pass true to search only for completed downloads.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of files to be returned.
  # @return [TD::Types::FoundFileDownloads]
  def search_file_downloads(query: nil, only_active:, only_completed:, offset:, limit:)
    broadcast('@type'          => 'searchFileDownloads',
              'query'          => query,
              'only_active'    => only_active,
              'only_completed' => only_completed,
              'offset'         => offset,
              'limit'          => limit)
  end
  
  # Searches for recently used hashtags by their prefix.
  #
  # @param prefix [TD::Types::String] Hashtag prefix to search for.
  # @param limit [Integer] The maximum number of hashtags to be returned.
  # @return [TD::Types::Hashtags]
  def search_hashtags(prefix:, limit:)
    broadcast('@type'  => 'searchHashtags',
              'prefix' => prefix,
              'limit'  => limit)
  end
  
  # Searches for installed sticker sets by looking for specified query in their title and name.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to search for.
  # @param query [TD::Types::String] Query to search for.
  # @param limit [Integer] The maximum number of sticker sets to return.
  # @return [TD::Types::StickerSets]
  def search_installed_sticker_sets(sticker_type:, query:, limit:)
    broadcast('@type'        => 'searchInstalledStickerSets',
              'sticker_type' => sticker_type,
              'query'        => query,
              'limit'        => limit)
  end
  
  # Searches for messages in all chats except secret chats.
  # Returns the results in reverse chronological order (i.e., in order of decreasing (date, chat_id, message_id)).
  # For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  #
  # @param chat_list [TD::Types::ChatList] Chat list in which to search messages; pass null to search in all chats
  #   regardless of their chat list.
  #   Only Main and Archive chat lists are supported.
  # @param only_in_channels [Boolean] Pass true to search only for messages in channels.
  # @param query [TD::Types::String] Query to search for.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of messages to be returned; up to 100.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @param filter [TD::Types::SearchMessagesFilter] Additional filter for messages to search; pass null to search for
  #   all messages.
  #   Filters searchMessagesFilterMention, searchMessagesFilterUnreadMention, searchMessagesFilterUnreadReaction,
  #   searchMessagesFilterFailedToSend, and {TD::Types::SearchMessagesFilter::Pinned} are unsupported in this function.
  # @param min_date [Integer] If not 0, the minimum date of the messages to return.
  # @param max_date [Integer] If not 0, the maximum date of the messages to return.
  # @return [TD::Types::FoundMessages]
  def search_messages(chat_list:, only_in_channels:, query:, offset:, limit:, filter:, min_date:, max_date:)
    broadcast('@type'            => 'searchMessages',
              'chat_list'        => chat_list,
              'only_in_channels' => only_in_channels,
              'query'            => query,
              'offset'           => offset,
              'limit'            => limit,
              'filter'           => filter,
              'min_date'         => min_date,
              'max_date'         => max_date)
  end
  
  # Searches for outgoing messages with content of the type messageDocument in all chats except secret chats.
  # Returns the results in reverse chronological order.
  #
  # @param query [TD::Types::String] Query to search for in document file name and message caption.
  # @param limit [Integer] The maximum number of messages to be returned; up to 100.
  # @return [TD::Types::FoundMessages]
  def search_outgoing_document_messages(query:, limit:)
    broadcast('@type' => 'searchOutgoingDocumentMessages',
              'query' => query,
              'limit' => limit)
  end
  
  # Searches a public chat by its username.
  # Currently, only private chats, supergroups and channels can be public.
  # Returns the chat if found; otherwise, an error is returned.
  #
  # @param username [TD::Types::String] Username to be resolved.
  # @return [TD::Types::Chat]
  def search_public_chat(username:)
    broadcast('@type'    => 'searchPublicChat',
              'username' => username)
  end
  
  # Searches public chats by looking for specified query in their username and title.
  # Currently, only private chats, supergroups and channels can be public.
  # Returns a meaningful number of results.
  # Excludes private chats with contacts and chats from the chat list from the results.
  #
  # @param query [TD::Types::String] Query to search for.
  # @return [TD::Types::Chats]
  def search_public_chats(query:)
    broadcast('@type' => 'searchPublicChats',
              'query' => query)
  end
  
  # Searches for public channel posts containing the given hashtag or cashtag.
  # For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  #
  # @param tag [TD::Types::String] Hashtag or cashtag to search for.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of messages to be returned; up to 100.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::FoundMessages]
  def search_public_messages_by_tag(tag:, offset:, limit:)
    broadcast('@type'  => 'searchPublicMessagesByTag',
              'tag'    => tag,
              'offset' => offset,
              'limit'  => limit)
  end
  
  # Searches for public stories by the given address location.
  # For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified
  #   limit.
  #
  # @param address [TD::Types::LocationAddress] Address of the location.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of stories to be returned; up to 100.
  #   For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::FoundStories]
  def search_public_stories_by_location(address:, offset:, limit:)
    broadcast('@type'   => 'searchPublicStoriesByLocation',
              'address' => address,
              'offset'  => offset,
              'limit'   => limit)
  end
  
  # Searches for public stories containing the given hashtag or cashtag.
  # For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified
  #   limit.
  #
  # @param tag [TD::Types::String] Hashtag or cashtag to search for.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of stories to be returned; up to 100.
  #   For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::FoundStories]
  def search_public_stories_by_tag(tag:, offset:, limit:)
    broadcast('@type'  => 'searchPublicStoriesByTag',
              'tag'    => tag,
              'offset' => offset,
              'limit'  => limit)
  end
  
  # Searches for public stories from the given venue.
  # For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified
  #   limit.
  #
  # @param venue_provider [TD::Types::String] Provider of the venue.
  # @param venue_id [TD::Types::String] Identifier of the venue in the provider database.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of stories to be returned; up to 100.
  #   For optimal performance, the number of returned stories is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::FoundStories]
  def search_public_stories_by_venue(venue_provider:, venue_id:, offset:, limit:)
    broadcast('@type'          => 'searchPublicStoriesByVenue',
              'venue_provider' => venue_provider,
              'venue_id'       => venue_id,
              'offset'         => offset,
              'limit'          => limit)
  end
  
  # Searches for a given quote in a text.
  # Returns found quote start position in UTF-16 code units.
  # Returns a 404 error if the quote is not found.
  # Can be called synchronously.
  #
  # @param text [TD::Types::FormattedText] Text in which to search for the quote.
  # @param quote [TD::Types::FormattedText] Quote to search for.
  # @param quote_position [Integer] Approximate quote position in UTF-16 code units.
  # @return [TD::Types::FoundPosition]
  def search_quote(text:, quote:, quote_position:)
    broadcast('@type'          => 'searchQuote',
              'text'           => text,
              'quote'          => quote,
              'quote_position' => quote_position)
  end
  
  # Searches for the specified query in the title and username of up to 50 recently found chats; this is an offline
  #   request.
  #
  # @param query [TD::Types::String] Query to search for.
  # @param limit [Integer] The maximum number of chats to be returned.
  # @return [TD::Types::Chats]
  def search_recently_found_chats(query:, limit:)
    broadcast('@type' => 'searchRecentlyFoundChats',
              'query' => query,
              'limit' => limit)
  end
  
  # Searches for messages tagged by the given reaction and with the given words in the Saved Messages chat; for
  #   Telegram Premium users only.
  # Returns the results in reverse chronological order, i.e.
  # in order of decreasing message_id For optimal performance, the number of returned messages is chosen by TDLib and
  #   can be smaller than the specified limit.
  #
  # @param saved_messages_topic_id [Integer] If not 0, only messages in the specified Saved Messages topic will be
  #   considered; pass 0 to consider all messages.
  # @param tag [TD::Types::ReactionType] Tag to search for; pass null to return all suitable messages.
  # @param query [TD::Types::String] Query to search for.
  # @param from_message_id [Integer] Identifier of the message starting from which messages must be fetched; use 0 to
  #   get results from the last message.
  # @param offset [Integer] Specify 0 to get results from exactly the message from_message_id or a negative offset to
  #   get the specified message and some newer messages.
  # @param limit [Integer] The maximum number of messages to be returned; must be positive and can't be greater than
  #   100.
  #   If the offset is negative, the limit must be greater than -offset.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @return [TD::Types::FoundChatMessages]
  def search_saved_messages(saved_messages_topic_id:, tag:, query:, from_message_id:, offset:, limit:)
    broadcast('@type'                   => 'searchSavedMessages',
              'saved_messages_topic_id' => saved_messages_topic_id,
              'tag'                     => tag,
              'query'                   => query,
              'from_message_id'         => from_message_id,
              'offset'                  => offset,
              'limit'                   => limit)
  end
  
  # Searches for messages in secret chats.
  # Returns the results in reverse chronological order.
  # For optimal performance, the number of returned messages is chosen by TDLib.
  #
  # @param chat_id [Integer] Identifier of the chat in which to search.
  #   Specify 0 to search in all secret chats.
  # @param query [TD::Types::String] Query to search for.
  #   If empty, searchChatMessages must be used instead.
  # @param offset [TD::Types::String] Offset of the first entry to return as received from the previous request; use
  #   empty string to get the first chunk of results.
  # @param limit [Integer] The maximum number of messages to be returned; up to 100.
  #   For optimal performance, the number of returned messages is chosen by TDLib and can be smaller than the specified
  #   limit.
  # @param filter [TD::Types::SearchMessagesFilter] Additional filter for messages to search; pass null to search for
  #   all messages.
  # @return [TD::Types::FoundMessages]
  def search_secret_messages(chat_id:, query:, offset:, limit:, filter:)
    broadcast('@type'   => 'searchSecretMessages',
              'chat_id' => chat_id,
              'query'   => query,
              'offset'  => offset,
              'limit'   => limit,
              'filter'  => filter)
  end
  
  # Searches for a sticker set by its name.
  #
  # @param name [TD::Types::String] Name of the sticker set.
  # @return [TD::Types::StickerSet]
  def search_sticker_set(name:)
    broadcast('@type' => 'searchStickerSet',
              'name'  => name)
  end
  
  # Searches for sticker sets by looking for specified query in their title and name.
  # Excludes installed sticker sets from the results.
  #
  # @param sticker_type [TD::Types::StickerType] Type of the sticker sets to return.
  # @param query [TD::Types::String] Query to search for.
  # @return [TD::Types::StickerSets]
  def search_sticker_sets(sticker_type:, query:)
    broadcast('@type'        => 'searchStickerSets',
              'sticker_type' => sticker_type,
              'query'        => query)
  end
  
  # Searches for stickers from public sticker sets that correspond to any of the given emoji.
  #
  # @param sticker_type [TD::Types::StickerType, nil] Type of the stickers to return.
  # @param emojis [TD::Types::String] Space-separated list of emojis to search for; must be non-empty.
  # @param limit [Integer, nil] The maximum number of stickers to be returned; 0-100.
  # @return [TD::Types::Stickers]
  def search_stickers(sticker_type: nil, emojis:, limit: nil)
    broadcast('@type'        => 'searchStickers',
              'sticker_type' => sticker_type,
              'emojis'       => emojis,
              'limit'        => limit)
  end
  
  # Searches specified query by word prefixes in the provided strings.
  # Returns 0-based positions of strings that matched.
  # Can be called synchronously.
  #
  # @param strings [Array<TD::Types::String>] The strings to search in for the query.
  # @param query [TD::Types::String] Query to search for.
  # @param limit [Integer] The maximum number of objects to return.
  # @param return_none_for_empty_query [Boolean] Pass true to receive no results for an empty query.
  # @return [TD::Types::FoundPositions]
  def search_strings_by_prefix(strings:, query:, limit:, return_none_for_empty_query:)
    broadcast('@type'                       => 'searchStringsByPrefix',
              'strings'                     => strings,
              'query'                       => query,
              'limit'                       => limit,
              'return_none_for_empty_query' => return_none_for_empty_query)
  end
  
  # Searches a user by their phone number.
  # Returns a 404 error if the user can't be found.
  #
  # @param phone_number [TD::Types::String] Phone number to search for.
  # @param only_local [Boolean] Pass true to get only locally available information without sending network requests.
  # @return [TD::Types::User]
  def search_user_by_phone_number(phone_number:, only_local:)
    broadcast('@type'        => 'searchUserByPhoneNumber',
              'phone_number' => phone_number,
              'only_local'   => only_local)
  end
  
  # Searches a user by a token from the user's link.
  #
  # @param token [TD::Types::String] Token to search for.
  # @return [TD::Types::User]
  def search_user_by_token(token:)
    broadcast('@type' => 'searchUserByToken',
              'token' => token)
  end
  
  # Returns information about a Web App by its short name.
  # Returns a 404 error if the Web App is not found.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param web_app_short_name [TD::Types::String] Short name of the Web App.
  # @return [TD::Types::FoundWebApp]
  def search_web_app(bot_user_id:, web_app_short_name:)
    broadcast('@type'              => 'searchWebApp',
              'bot_user_id'        => bot_user_id,
              'web_app_short_name' => web_app_short_name)
  end
  
  # Sends Firebase Authentication SMS to the phone number of the user.
  # Works only when the current authorization state is authorizationStateWaitCode and the server returned code of the
  #   type authenticationCodeTypeFirebaseAndroid or authenticationCodeTypeFirebaseIos.
  #
  # @param token [TD::Types::String] Play Integrity API or SafetyNet Attestation API token for the Android application,
  #   or secret from push notification for the iOS application.
  # @return [TD::Types::Ok]
  def send_authentication_firebase_sms(token:)
    broadcast('@type' => 'sendAuthenticationFirebaseSms',
              'token' => token)
  end
  
  # Invites a bot to a chat (if it is not yet a member) and sends it the /start command; requires can_invite_users
  #   member right.
  # Bots can't be invited to a private chat other than the chat with the bot.
  # Bots can't be invited to channels (although they can be added as admins) and secret chats.
  # Returns the sent message.
  #
  # @param bot_user_id [Integer] Identifier of the bot.
  # @param chat_id [Integer] Identifier of the target chat.
  # @param parameter [TD::Types::String] A hidden parameter sent to the bot for deep linking purposes
  #   (https://core.telegram.org/bots#deep-linking).
  # @return [TD::Types::Message]
  def send_bot_start_message(bot_user_id:, chat_id:, parameter:)
    broadcast('@type'       => 'sendBotStartMessage',
              'bot_user_id' => bot_user_id,
              'chat_id'     => chat_id,
              'parameter'   => parameter)
  end
  
  # Sends a message on behalf of a business account; for bots only.
  # Returns the message after it was sent.
  #
  # @param business_connection_id [TD::Types::String] Unique identifier of business connection on behalf of which to
  #   send the request.
  # @param chat_id [Integer] Target chat.
  # @param reply_to [TD::Types::InputMessageReplyTo] Information about the message to be replied; pass null if none.
  # @param disable_notification [Boolean] Pass true to disable notification for the message.
  # @param protect_content [Boolean] Pass true if the content of the message must be protected from forwarding and
  #   saving.
  # @param effect_id [Integer] Identifier of the effect to apply to the message.
  # @param reply_markup [TD::Types::ReplyMarkup] Markup for replying to the message; pass null if none.
  # @param input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  # @return [TD::Types::BusinessMessage]
  def send_business_message(business_connection_id:, chat_id:, reply_to:, disable_notification:, protect_content:,
                            effect_id:, reply_markup:, input_message_content:)
    broadcast('@type'                  => 'sendBusinessMessage',
              'business_connection_id' => business_connection_id,
              'chat_id'                => chat_id,
              'reply_to'               => reply_to,
              'disable_notification'   => disable_notification,
              'protect_content'        => protect_content,
              'effect_id'              => effect_id,
              'reply_markup'           => reply_markup,
              'input_message_content'  => input_message_content)
  end
  
  # Sends 2-10 messages grouped together into an album on behalf of a business account; for bots only.
  # Currently, only audio, document, photo and video messages can be grouped into an album.
  # Documents and audio files can be only grouped in an album with messages of the same type.
  # Returns sent messages.
  #
  # @param business_connection_id [TD::Types::String] Unique identifier of business connection on behalf of which to
  #   send the request.
  # @param chat_id [Integer] Target chat.
  # @param reply_to [TD::Types::InputMessageReplyTo] Information about the message to be replied; pass null if none.
  # @param disable_notification [Boolean] Pass true to disable notification for the message.
  # @param protect_content [Boolean] Pass true if the content of the message must be protected from forwarding and
  #   saving.
  # @param effect_id [Integer] Identifier of the effect to apply to the message.
  # @param input_message_contents [Array<TD::Types::InputMessageContent>] Contents of messages to be sent.
  #   At most 10 messages can be added to an album.
  #   All messages must have the same value of show_caption_above_media.
  # @return [TD::Types::BusinessMessages]
  def send_business_message_album(business_connection_id:, chat_id:, reply_to:, disable_notification:, protect_content:,
                                  effect_id:, input_message_contents:)
    broadcast('@type'                  => 'sendBusinessMessageAlbum',
              'business_connection_id' => business_connection_id,
              'chat_id'                => chat_id,
              'reply_to'               => reply_to,
              'disable_notification'   => disable_notification,
              'protect_content'        => protect_content,
              'effect_id'              => effect_id,
              'input_message_contents' => input_message_contents)
  end
  
  # Sends debug information for a call to Telegram servers.
  #
  # @param call_id [Integer] Call identifier.
  # @param debug_information [TD::Types::String] Debug information in application-specific format.
  # @return [TD::Types::Ok]
  def send_call_debug_information(call_id:, debug_information:)
    broadcast('@type'             => 'sendCallDebugInformation',
              'call_id'           => call_id,
              'debug_information' => debug_information)
  end
  
  # Sends log file for a call to Telegram servers.
  #
  # @param call_id [Integer] Call identifier.
  # @param log_file [TD::Types::InputFile] Call log file.
  #   Only {TD::Types::InputFile::Local} and {TD::Types::InputFile::Generated} are supported.
  # @return [TD::Types::Ok]
  def send_call_log(call_id:, log_file:)
    broadcast('@type'    => 'sendCallLog',
              'call_id'  => call_id,
              'log_file' => log_file)
  end
  
  # Sends a call rating.
  #
  # @param call_id [Integer] Call identifier.
  # @param rating [Integer] Call rating; 1-5.
  # @param comment [TD::Types::String] An optional user comment if the rating is less than 5.
  # @param problems [Array<TD::Types::CallProblem>] List of the exact types of problems with the call, specified by the
  #   user.
  # @return [TD::Types::Ok]
  def send_call_rating(call_id:, rating:, comment:, problems:)
    broadcast('@type'    => 'sendCallRating',
              'call_id'  => call_id,
              'rating'   => rating,
              'comment'  => comment,
              'problems' => problems)
  end
  
  # Sends call signaling data.
  #
  # @param call_id [Integer] Call identifier.
  # @param data [String] The data.
  # @return [TD::Types::Ok]
  def send_call_signaling_data(call_id:, data:)
    broadcast('@type'   => 'sendCallSignalingData',
              'call_id' => call_id,
              'data'    => data)
  end
  
  # Sends a notification about user activity in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] If not 0, the message thread identifier in which the action was performed.
  # @param business_connection_id [TD::Types::String] Unique identifier of business connection on behalf of which to
  #   send the request; for bots only.
  # @param action [TD::Types::ChatAction] The action description; pass null to cancel the currently active action.
  # @return [TD::Types::Ok]
  def send_chat_action(chat_id:, message_thread_id:, business_connection_id:, action:)
    broadcast('@type'                  => 'sendChatAction',
              'chat_id'                => chat_id,
              'message_thread_id'      => message_thread_id,
              'business_connection_id' => business_connection_id,
              'action'                 => action)
  end
  
  # Sends a custom request; for bots only.
  #
  # @param method [TD::Types::String] The method name.
  # @param parameters [TD::Types::String] JSON-serialized method parameters.
  # @return [TD::Types::CustomRequestResult]
  def send_custom_request(method:, parameters:)
    broadcast('@type'      => 'sendCustomRequest',
              'method'     => method,
              'parameters' => parameters)
  end
  
  # Sends a code to verify an email address to be added to a user's Telegram Passport.
  #
  # @param email_address [TD::Types::String] Email address.
  # @return [TD::Types::EmailAddressAuthenticationCodeInfo]
  def send_email_address_verification_code(email_address:)
    broadcast('@type'         => 'sendEmailAddressVerificationCode',
              'email_address' => email_address)
  end
  
  # Sends the result of an inline query as a message.
  # Returns the sent message.
  # Always clears a chat draft message.
  #
  # @param chat_id [Integer] Target chat.
  # @param message_thread_id [Integer] If not 0, the message thread identifier in which the message will be sent.
  # @param reply_to [TD::Types::InputMessageReplyTo] Information about the message or story to be replied; pass null if
  #   none.
  # @param options [TD::Types::MessageSendOptions] Options to be used to send the message; pass null to use default
  #   options.
  # @param query_id [Integer] Identifier of the inline query.
  # @param result_id [TD::Types::String] Identifier of the inline query result.
  # @param hide_via_bot [Boolean] Pass true to hide the bot, via which the message is sent.
  #   Can be used only for bots getOption("animation_search_bot_username"), getOption("photo_search_bot_username"), and
  #   getOption("venue_search_bot_username").
  # @return [TD::Types::Message]
  def send_inline_query_result_message(chat_id:, message_thread_id:, reply_to:, options:, query_id:, result_id:,
                                       hide_via_bot:)
    broadcast('@type'             => 'sendInlineQueryResultMessage',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id,
              'reply_to'          => reply_to,
              'options'           => options,
              'query_id'          => query_id,
              'result_id'         => result_id,
              'hide_via_bot'      => hide_via_bot)
  end
  
  # Sends a message.
  # Returns the sent message.
  #
  # @param chat_id [Integer] Target chat.
  # @param message_thread_id [Integer] If not 0, the message thread identifier in which the message will be sent.
  # @param reply_to [TD::Types::InputMessageReplyTo] Information about the message or story to be replied; pass null if
  #   none.
  # @param options [TD::Types::MessageSendOptions] Options to be used to send the message; pass null to use default
  #   options.
  # @param reply_markup [TD::Types::ReplyMarkup] Markup for replying to the message; pass null if none; for bots only.
  # @param input_message_content [TD::Types::InputMessageContent] The content of the message to be sent.
  # @return [TD::Types::Message]
  def send_message(chat_id:, message_thread_id:, reply_to:, options:, reply_markup:, input_message_content:)
    broadcast('@type'                 => 'sendMessage',
              'chat_id'               => chat_id,
              'message_thread_id'     => message_thread_id,
              'reply_to'              => reply_to,
              'options'               => options,
              'reply_markup'          => reply_markup,
              'input_message_content' => input_message_content)
  end
  
  # Sends 2-10 messages grouped together into an album.
  # Currently, only audio, document, photo and video messages can be grouped into an album.
  # Documents and audio files can be only grouped in an album with messages of the same type.
  # Returns sent messages.
  #
  # @param chat_id [Integer] Target chat.
  # @param message_thread_id [Integer] If not 0, the message thread identifier in which the messages will be sent.
  # @param reply_to [TD::Types::InputMessageReplyTo] Information about the message or story to be replied; pass null if
  #   none.
  # @param options [TD::Types::MessageSendOptions] Options to be used to send the messages; pass null to use default
  #   options.
  # @param input_message_contents [Array<TD::Types::InputMessageContent>] Contents of messages to be sent.
  #   At most 10 messages can be added to an album.
  #   All messages must have the same value of show_caption_above_media.
  # @return [TD::Types::Messages]
  def send_message_album(chat_id:, message_thread_id:, reply_to:, options:, input_message_contents:)
    broadcast('@type'                  => 'sendMessageAlbum',
              'chat_id'                => chat_id,
              'message_thread_id'      => message_thread_id,
              'reply_to'               => reply_to,
              'options'                => options,
              'input_message_contents' => input_message_contents)
  end
  
  # Sends a Telegram Passport authorization form, effectively sharing data with the service.
  # This method must be called after getPassportAuthorizationFormAvailableElements if some previously available
  #   elements are going to be reused.
  #
  # @param authorization_form_id [Integer] Authorization form identifier.
  # @param types [Array<TD::Types::PassportElementType>] Types of Telegram Passport elements chosen by user to complete
  #   the authorization form.
  # @return [TD::Types::Ok]
  def send_passport_authorization_form(authorization_form_id:, types:)
    broadcast('@type'                 => 'sendPassportAuthorizationForm',
              'authorization_form_id' => authorization_form_id,
              'types'                 => types)
  end
  
  # Sends a filled-out payment form to the bot for final verification.
  #
  # @param input_invoice [TD::Types::InputInvoice] The invoice.
  # @param payment_form_id [Integer] Payment form identifier returned by getPaymentForm.
  # @param order_info_id [TD::Types::String] Identifier returned by validateOrderInfo, or an empty string.
  # @param shipping_option_id [TD::Types::String] Identifier of a chosen shipping option, if applicable.
  # @param credentials [TD::Types::InputCredentials] The credentials chosen by user for payment; pass null for a
  #   payment in Telegram Stars.
  # @param tip_amount [Integer] Chosen by the user amount of tip in the smallest units of the currency.
  # @return [TD::Types::PaymentResult]
  def send_payment_form(input_invoice:, payment_form_id:, order_info_id:, shipping_option_id:, credentials:, tip_amount:)
    broadcast('@type'              => 'sendPaymentForm',
              'input_invoice'      => input_invoice,
              'payment_form_id'    => payment_form_id,
              'order_info_id'      => order_info_id,
              'shipping_option_id' => shipping_option_id,
              'credentials'        => credentials,
              'tip_amount'         => tip_amount)
  end
  
  # Sends a code to the specified phone number.
  # Aborts previous phone number verification if there was one.
  # On success, returns information about the sent code.
  #
  # @param phone_number [TD::Types::String] The phone number, in international format.
  # @param settings [TD::Types::PhoneNumberAuthenticationSettings] Settings for the authentication of the user's phone
  #   number; pass null to use default settings.
  # @param type [TD::Types::PhoneNumberCodeType] Type of the request for which the code is sent.
  # @return [TD::Types::AuthenticationCodeInfo]
  def send_phone_number_code(phone_number:, settings:, type:)
    broadcast('@type'        => 'sendPhoneNumberCode',
              'phone_number' => phone_number,
              'settings'     => settings,
              'type'         => type)
  end
  
  # Sends Firebase Authentication SMS to the specified phone number.
  # Works only when received a code of the type authenticationCodeTypeFirebaseAndroid or
  #   authenticationCodeTypeFirebaseIos.
  #
  # @param token [TD::Types::String] Play Integrity API or SafetyNet Attestation API token for the Android application,
  #   or secret from push notification for the iOS application.
  # @return [TD::Types::Ok]
  def send_phone_number_firebase_sms(token:)
    broadcast('@type' => 'sendPhoneNumberFirebaseSms',
              'token' => token)
  end
  
  # Sends messages from a quick reply shortcut.
  # Requires Telegram Business subscription.
  #
  # @param chat_id [Integer] Identifier of the chat to which to send messages.
  #   The chat must be a private chat with a regular user.
  # @param shortcut_id [Integer] Unique identifier of the quick reply shortcut.
  # @param sending_id [Integer] Non-persistent identifier, which will be returned back in
  #   {TD::Types::MessageSendingState::Pending} object and can be used to match sent messages and corresponding
  #   {TD::Types::Update::NewMessage} updates.
  # @return [TD::Types::Messages]
  def send_quick_reply_shortcut_messages(chat_id:, shortcut_id:, sending_id:)
    broadcast('@type'       => 'sendQuickReplyShortcutMessages',
              'chat_id'     => chat_id,
              'shortcut_id' => shortcut_id,
              'sending_id'  => sending_id)
  end
  
  # Sends a new story to a chat; requires can_post_stories right for supergroup and channel chats.
  # Returns a temporary story.
  #
  # @param chat_id [Integer] Identifier of the chat that will post the story.
  #   Pass Saved Messages chat identifier when posting a story on behalf of the current user.
  # @param content [TD::Types::InputStoryContent] Content of the story.
  # @param areas [TD::Types::InputStoryAreas] Clickable rectangle areas to be shown on the story media; pass null if
  #   none.
  # @param caption [TD::Types::FormattedText] Story caption; pass null to use an empty caption;
  #   0-getOption("story_caption_length_max") characters; can have entities only if
  #   getOption("can_use_text_entities_in_story_caption").
  # @param privacy_settings [TD::Types::StoryPrivacySettings] The privacy settings for the story; ignored for stories
  #   sent to supergroup and channel chats.
  # @param active_period [Integer] Period after which the story is moved to archive, in seconds; must be one of 6 *
  #   3600, 12 * 3600, 86400, or 2 * 86400 for Telegram Premium users, and 86400 otherwise.
  # @param from_story_full_id [TD::Types::StoryFullId] Full identifier of the original story, which content was used to
  #   create the story; pass null if the story isn't repost of another story.
  # @param is_posted_to_chat_page [Boolean] Pass true to keep the story accessible after expiration.
  # @param protect_content [Boolean] Pass true if the content of the story must be protected from forwarding and
  #   screenshotting.
  # @return [TD::Types::Story]
  def send_story(chat_id:, content:, areas:, caption:, privacy_settings:, active_period:, from_story_full_id:,
                 is_posted_to_chat_page:, protect_content:)
    broadcast('@type'                  => 'sendStory',
              'chat_id'                => chat_id,
              'content'                => content,
              'areas'                  => areas,
              'caption'                => caption,
              'privacy_settings'       => privacy_settings,
              'active_period'          => active_period,
              'from_story_full_id'     => from_story_full_id,
              'is_posted_to_chat_page' => is_posted_to_chat_page,
              'protect_content'        => protect_content)
  end
  
  # Sends a custom request from a Web App.
  #
  # @param bot_user_id [Integer] Identifier of the bot.
  # @param method [TD::Types::String] The method name.
  # @param parameters [TD::Types::String] JSON-serialized method parameters.
  # @return [TD::Types::CustomRequestResult]
  def send_web_app_custom_request(bot_user_id:, method:, parameters:)
    broadcast('@type'       => 'sendWebAppCustomRequest',
              'bot_user_id' => bot_user_id,
              'method'      => method,
              'parameters'  => parameters)
  end
  
  # Sends data received from a keyboardButtonTypeWebApp Web App to a bot.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param button_text [TD::Types::String] Text of the {TD::Types::KeyboardButtonType::WebApp} button, which opened the
  #   Web App.
  # @param data [TD::Types::String] The data.
  # @return [TD::Types::Ok]
  def send_web_app_data(bot_user_id:, button_text:, data:)
    broadcast('@type'       => 'sendWebAppData',
              'bot_user_id' => bot_user_id,
              'button_text' => button_text,
              'data'        => data)
  end
  
  # Changes accent color and background custom emoji for the current user; for Telegram Premium users only.
  #
  # @param accent_color_id [Integer] Identifier of the accent color to use.
  # @param background_custom_emoji_id [Integer] Identifier of a custom emoji to be shown on the reply header and link
  #   preview background; 0 if none.
  # @return [TD::Types::Ok]
  def set_accent_color(accent_color_id:, background_custom_emoji_id:)
    broadcast('@type'                      => 'setAccentColor',
              'accent_color_id'            => accent_color_id,
              'background_custom_emoji_id' => background_custom_emoji_id)
  end
  
  # Changes the period of inactivity after which the account of the current user will automatically be deleted.
  #
  # @param ttl [TD::Types::AccountTtl] New account TTL.
  # @return [TD::Types::Ok]
  def set_account_ttl(ttl:)
    broadcast('@type' => 'setAccountTtl',
              'ttl'   => ttl)
  end
  
  # Succeeds after a specified amount of time has passed.
  # Can be called before initialization.
  #
  # @param seconds [Float] Number of seconds before the function returns.
  # @return [TD::Types::Ok]
  def set_alarm(seconds:)
    broadcast('@type'   => 'setAlarm',
              'seconds' => seconds)
  end
  
  # Application verification has been completed.
  # Can be called before authorization.
  #
  # @param verification_id [Integer] Unique identifier for the verification process as received from
  #   updateApplicationVerificationRequired.
  # @param token [TD::Types::String] Play Integrity API token for the Android application, or secret from push
  #   notification for the iOS application;.
  # @return [TD::Types::Ok]
  def set_application_verification_token(verification_id:, token:)
    broadcast('@type'           => 'setApplicationVerificationToken',
              'verification_id' => verification_id,
              'token'           => token)
  end
  
  # Changes settings for automatic moving of chats to and from the Archive chat lists.
  #
  # @param settings [TD::Types::ArchiveChatListSettings] New settings.
  # @return [TD::Types::Ok]
  def set_archive_chat_list_settings(settings:)
    broadcast('@type'    => 'setArchiveChatListSettings',
              'settings' => settings)
  end
  
  # Sets the email address of the user and sends an authentication code to the email address.
  # Works only when the current authorization state is authorizationStateWaitEmailAddress.
  #
  # @param email_address [TD::Types::String] The email address of the user.
  # @return [TD::Types::Ok]
  def set_authentication_email_address(email_address:)
    broadcast('@type'         => 'setAuthenticationEmailAddress',
              'email_address' => email_address)
  end
  
  # Sets the phone number of the user and sends an authentication code to the user.
  # Works only when the current authorization state is authorizationStateWaitPhoneNumber, or if there is no pending
  #   authentication query and the current authorization state is authorizationStateWaitEmailAddress,
  #   authorizationStateWaitEmailCode, authorizationStateWaitCode, authorizationStateWaitRegistration, or
  #   authorizationStateWaitPassword.
  #
  # @param phone_number [TD::Types::String] The phone number of the user, in international format.
  # @param settings [TD::Types::PhoneNumberAuthenticationSettings] Settings for the authentication of the user's phone
  #   number; pass null to use default settings.
  # @return [TD::Types::Ok]
  def set_authentication_phone_number(phone_number:, settings:)
    broadcast('@type'        => 'setAuthenticationPhoneNumber',
              'phone_number' => phone_number,
              'settings'     => settings)
  end
  
  # Sets auto-download settings.
  #
  # @param settings [TD::Types::AutoDownloadSettings] New user auto-download settings.
  # @param type [TD::Types::NetworkType] Type of the network for which the new settings are relevant.
  # @return [TD::Types::Ok]
  def set_auto_download_settings(settings:, type:)
    broadcast('@type'    => 'setAutoDownloadSettings',
              'settings' => settings,
              'type'     => type)
  end
  
  # Sets autosave settings for the given scope.
  # The method is guaranteed to work only after at least one call to getAutosaveSettings.
  #
  # @param scope [TD::Types::AutosaveSettingsScope] Autosave settings scope.
  # @param settings [TD::Types::ScopeAutosaveSettings] New autosave settings for the scope; pass null to set autosave
  #   settings to default.
  # @return [TD::Types::Ok]
  def set_autosave_settings(scope:, settings:)
    broadcast('@type'    => 'setAutosaveSettings',
              'scope'    => scope,
              'settings' => settings)
  end
  
  # Changes the bio of the current user.
  #
  # @param bio [TD::Types::String] The new value of the user bio; 0-getOption("bio_length_max") characters without line
  #   feeds.
  # @return [TD::Types::Ok]
  def set_bio(bio:)
    broadcast('@type' => 'setBio',
              'bio'   => bio)
  end
  
  # Changes the birthdate of the current user.
  #
  # @param birthdate [TD::Types::Birthdate] The new value of the current user's birthdate; pass null to remove the
  #   birthdate.
  # @return [TD::Types::Ok]
  def set_birthdate(birthdate:)
    broadcast('@type'     => 'setBirthdate',
              'birthdate' => birthdate)
  end
  
  # Sets the text shown in the chat with a bot if the chat is empty.
  # Can be called only if userTypeBot.can_be_edited == true.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code.
  #   If empty, the description will be shown to all users for whose languages there is no dedicated description.
  # @param description [TD::Types::String] New bot's description on the specified language.
  # @return [TD::Types::Ok]
  def set_bot_info_description(bot_user_id:, language_code:, description:)
    broadcast('@type'         => 'setBotInfoDescription',
              'bot_user_id'   => bot_user_id,
              'language_code' => language_code,
              'description'   => description)
  end
  
  # Sets the text shown on a bot's profile page and sent together with the link when users share the bot.
  # Can be called only if userTypeBot.can_be_edited == true.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code.
  #   If empty, the short description will be shown to all users for whose languages there is no dedicated description.
  # @param short_description [TD::Types::String] New bot's short description on the specified language.
  # @return [TD::Types::Ok]
  def set_bot_info_short_description(bot_user_id:, language_code:, short_description:)
    broadcast('@type'             => 'setBotInfoShortDescription',
              'bot_user_id'       => bot_user_id,
              'language_code'     => language_code,
              'short_description' => short_description)
  end
  
  # Sets the name of a bot.
  # Can be called only if userTypeBot.can_be_edited == true.
  #
  # @param bot_user_id [Integer, nil] Identifier of the target bot.
  # @param language_code [TD::Types::String, nil] A two-letter ISO 639-1 language code.
  #   If empty, the name will be shown to all users for whose languages there is no dedicated name.
  # @param name [TD::Types::String] New bot's name on the specified language; 0-64 characters; must be non-empty if
  #   language code is empty.
  # @return [TD::Types::Ok]
  def set_bot_name(bot_user_id: nil, language_code: nil, name:)
    broadcast('@type'         => 'setBotName',
              'bot_user_id'   => bot_user_id,
              'language_code' => language_code,
              'name'          => name)
  end
  
  # Changes a profile photo for a bot.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param photo [TD::Types::InputChatPhoto] Profile photo to set; pass null to delete the chat photo.
  # @return [TD::Types::Ok]
  def set_bot_profile_photo(bot_user_id:, photo:)
    broadcast('@type'       => 'setBotProfilePhoto',
              'bot_user_id' => bot_user_id,
              'photo'       => photo)
  end
  
  # Informs the server about the number of pending bot updates if they haven't been processed for a long time; for bots
  #   only.
  #
  # @param pending_update_count [Integer] The number of pending updates.
  # @param error_message [TD::Types::String] The last error message.
  # @return [TD::Types::Ok]
  def set_bot_updates_status(pending_update_count:, error_message:)
    broadcast('@type'                => 'setBotUpdatesStatus',
              'pending_update_count' => pending_update_count,
              'error_message'        => error_message)
  end
  
  # Changes the business away message settings of the current user.
  # Requires Telegram Business subscription.
  #
  # @param away_message_settings [TD::Types::BusinessAwayMessageSettings] The new settings for the away message of the
  #   business; pass null to disable the away message.
  # @return [TD::Types::Ok]
  def set_business_away_message_settings(away_message_settings:)
    broadcast('@type'                 => 'setBusinessAwayMessageSettings',
              'away_message_settings' => away_message_settings)
  end
  
  # Adds or changes business bot that is connected to the current user account.
  #
  # @param bot [TD::Types::BusinessConnectedBot] Connection settings for the bot.
  # @return [TD::Types::Ok]
  def set_business_connected_bot(bot:)
    broadcast('@type' => 'setBusinessConnectedBot',
              'bot'   => bot)
  end
  
  # Changes the business greeting message settings of the current user.
  # Requires Telegram Business subscription.
  #
  # @param greeting_message_settings [TD::Types::BusinessGreetingMessageSettings] The new settings for the greeting
  #   message of the business; pass null to disable the greeting message.
  # @return [TD::Types::Ok]
  def set_business_greeting_message_settings(greeting_message_settings:)
    broadcast('@type'                     => 'setBusinessGreetingMessageSettings',
              'greeting_message_settings' => greeting_message_settings)
  end
  
  # Changes the business location of the current user.
  # Requires Telegram Business subscription.
  #
  # @param location [TD::Types::BusinessLocation] The new location of the business; pass null to remove the location.
  # @return [TD::Types::Ok]
  def set_business_location(location:)
    broadcast('@type'    => 'setBusinessLocation',
              'location' => location)
  end
  
  # Pins or unpins a message sent on behalf of a business account; for bots only.
  #
  # @param business_connection_id [TD::Types::String] Unique identifier of business connection on behalf of which the
  #   message was sent.
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param is_pinned [Boolean] Pass true to pin the message, pass false to unpin it.
  # @return [TD::Types::Ok]
  def set_business_message_is_pinned(business_connection_id:, chat_id:, message_id:, is_pinned:)
    broadcast('@type'                  => 'setBusinessMessageIsPinned',
              'business_connection_id' => business_connection_id,
              'chat_id'                => chat_id,
              'message_id'             => message_id,
              'is_pinned'              => is_pinned)
  end
  
  # Changes the business opening hours of the current user.
  # Requires Telegram Business subscription.
  #
  # @param opening_hours [TD::Types::BusinessOpeningHours] The new opening hours of the business; pass null to remove
  #   the opening hours; up to 28 time intervals can be specified.
  # @return [TD::Types::Ok]
  def set_business_opening_hours(opening_hours:)
    broadcast('@type'         => 'setBusinessOpeningHours',
              'opening_hours' => opening_hours)
  end
  
  # Changes the business start page of the current user.
  # Requires Telegram Business subscription.
  #
  # @param start_page [TD::Types::InputBusinessStartPage] The new start page of the business; pass null to remove
  #   custom start page.
  # @return [TD::Types::Ok]
  def set_business_start_page(start_page:)
    broadcast('@type'      => 'setBusinessStartPage',
              'start_page' => start_page)
  end
  
  # Changes accent color and background custom emoji of a channel chat.
  # Requires can_change_info administrator right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param accent_color_id [Integer] Identifier of the accent color to use.
  #   The chat must have at least accentColor.min_channel_chat_boost_level boost level to pass the corresponding color.
  # @param background_custom_emoji_id [Integer] Identifier of a custom emoji to be shown on the reply header and link
  #   preview background; 0 if none.
  #   Use chatBoostLevelFeatures.can_set_background_custom_emoji to check whether a custom emoji can be set.
  # @return [TD::Types::Ok]
  def set_chat_accent_color(chat_id:, accent_color_id:, background_custom_emoji_id:)
    broadcast('@type'                      => 'setChatAccentColor',
              'chat_id'                    => chat_id,
              'accent_color_id'            => accent_color_id,
              'background_custom_emoji_id' => background_custom_emoji_id)
  end
  
  # Changes story list in which stories from the chat are shown.
  #
  # @param chat_id [Integer] Identifier of the chat that posted stories.
  # @param story_list [TD::Types::StoryList] New list for active stories posted by the chat.
  # @return [TD::Types::Ok]
  def set_chat_active_stories_list(chat_id:, story_list:)
    broadcast('@type'      => 'setChatActiveStoriesList',
              'chat_id'    => chat_id,
              'story_list' => story_list)
  end
  
  # Changes reactions, available in a chat.
  # Available for basic groups, supergroups, and channels.
  # Requires can_change_info member right.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param available_reactions [TD::Types::ChatAvailableReactions] Reactions available in the chat.
  #   All explicitly specified emoji reactions must be active.
  #   In channel chats up to the chat's boost level custom emoji reactions can be explicitly specified.
  # @return [TD::Types::Ok]
  def set_chat_available_reactions(chat_id:, available_reactions:)
    broadcast('@type'               => 'setChatAvailableReactions',
              'chat_id'             => chat_id,
              'available_reactions' => available_reactions)
  end
  
  # Sets the background in a specific chat.
  # Supported only in private and secret chats with non-deleted users, and in chats with sufficient boost level and
  #   can_change_info administrator right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param background [TD::Types::InputBackground] The input background to use; pass null to create a new filled or
  #   chat theme background.
  # @param type [TD::Types::BackgroundType] Background type; pass null to use default background type for the chosen
  #   background; {TD::Types::BackgroundType::ChatTheme} isn't supported for private and secret chats.
  #   Use chatBoostLevelFeatures.chat_theme_background_count and chatBoostLevelFeatures.can_set_custom_background to
  #   check whether the background type can be set in the boosted chat.
  # @param dark_theme_dimming [Integer] Dimming of the background in dark themes, as a percentage; 0-100.
  #   Applied only to Wallpaper and Fill types of background.
  # @param only_for_self [Boolean] Pass true to set background only for self; pass false to set background for all chat
  #   users.
  #   Always false for backgrounds set in boosted chats.
  #   Background can be set for both users only by Telegram Premium users and if set background isn't of the type
  #   inputBackgroundPrevious.
  # @return [TD::Types::Ok]
  def set_chat_background(chat_id:, background:, type:, dark_theme_dimming:, only_for_self:)
    broadcast('@type'              => 'setChatBackground',
              'chat_id'            => chat_id,
              'background'         => background,
              'type'               => type,
              'dark_theme_dimming' => dark_theme_dimming,
              'only_for_self'      => only_for_self)
  end
  
  # Changes application-specific data associated with a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param client_data [TD::Types::String] New value of client_data.
  # @return [TD::Types::Ok]
  def set_chat_client_data(chat_id:, client_data:)
    broadcast('@type'       => 'setChatClientData',
              'chat_id'     => chat_id,
              'client_data' => client_data)
  end
  
  # Changes information about a chat.
  # Available for basic groups, supergroups, and channels.
  # Requires can_change_info member right.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param description [TD::Types::String] New chat description; 0-255 characters.
  # @return [TD::Types::Ok]
  def set_chat_description(chat_id:, description:)
    broadcast('@type'       => 'setChatDescription',
              'chat_id'     => chat_id,
              'description' => description)
  end
  
  # Changes the discussion group of a channel chat; requires can_change_info administrator right in the channel if it
  #   is specified.
  #
  # @param chat_id [Integer] Identifier of the channel chat.
  #   Pass 0 to remove a link from the supergroup passed in the second argument to a linked channel chat (requires
  #   can_pin_messages member right in the supergroup).
  # @param discussion_chat_id [Integer] Identifier of a new channel's discussion group.
  #   Use 0 to remove the discussion group.
  #   Use the method getSuitableDiscussionChats to find all suitable groups.
  #   Basic group chats must be first upgraded to supergroup chats.
  #   If new chat members don't have access to old messages in the supergroup, then
  #   toggleSupergroupIsAllHistoryAvailable must be used first to change that.
  # @return [TD::Types::Ok]
  def set_chat_discussion_group(chat_id:, discussion_chat_id:)
    broadcast('@type'              => 'setChatDiscussionGroup',
              'chat_id'            => chat_id,
              'discussion_chat_id' => discussion_chat_id)
  end
  
  # Changes the draft message in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] If not 0, the message thread identifier in which the draft was changed.
  # @param draft_message [TD::Types::DraftMessage] New draft message; pass null to remove the draft.
  #   All files in draft message content must be of the type inputFileLocal.
  #   Media thumbnails and captions are ignored.
  # @return [TD::Types::Ok]
  def set_chat_draft_message(chat_id:, message_thread_id:, draft_message:)
    broadcast('@type'             => 'setChatDraftMessage',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id,
              'draft_message'     => draft_message)
  end
  
  # Changes the emoji status of a chat.
  # Use chatBoostLevelFeatures.can_set_emoji_status to check whether an emoji status can be set.
  # Requires can_change_info administrator right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param emoji_status [TD::Types::EmojiStatus] New emoji status; pass null to remove emoji status.
  # @return [TD::Types::Ok]
  def set_chat_emoji_status(chat_id:, emoji_status:)
    broadcast('@type'        => 'setChatEmojiStatus',
              'chat_id'      => chat_id,
              'emoji_status' => emoji_status)
  end
  
  # Changes the location of a chat.
  # Available only for some location-based supergroups, use supergroupFullInfo.can_set_location to check whether the
  #   method is allowed to use.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param location [TD::Types::ChatLocation] New location for the chat; must be valid and not null.
  # @return [TD::Types::Ok]
  def set_chat_location(chat_id:, location:)
    broadcast('@type'    => 'setChatLocation',
              'chat_id'  => chat_id,
              'location' => location)
  end
  
  # Changes the status of a chat member; requires can_invite_users member right to add a chat member,
  #   can_promote_members administrator right to change administrator rights of the member, and can_restrict_members
  #   administrator right to change restrictions of a user.
  # This function is currently not suitable for transferring chat ownership; use transferChatOwnership instead.
  # Use addChatMember or banChatMember if some additional parameters needs to be passed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param member_id [TD::Types::MessageSender] Member identifier.
  #   Chats can be only banned and unbanned in supergroups and channels.
  # @param status [TD::Types::ChatMemberStatus] The new status of the member in the chat.
  # @return [TD::Types::Ok]
  def set_chat_member_status(chat_id:, member_id:, status:)
    broadcast('@type'     => 'setChatMemberStatus',
              'chat_id'   => chat_id,
              'member_id' => member_id,
              'status'    => status)
  end
  
  # Changes the message auto-delete or self-destruct (for secret chats) time in a chat.
  # Requires change_info administrator right in basic groups, supergroups and channels Message auto-delete time can't
  #   be changed in a chat with the current user (Saved Messages) and the chat 777000 (Telegram)..
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_auto_delete_time [Integer] New time value, in seconds; unless the chat is secret, it must be from 0
  #   up to 365 * 86400 and be divisible by 86400.
  #   If 0, then messages aren't deleted automatically.
  # @return [TD::Types::Ok]
  def set_chat_message_auto_delete_time(chat_id:, message_auto_delete_time:)
    broadcast('@type'                    => 'setChatMessageAutoDeleteTime',
              'chat_id'                  => chat_id,
              'message_auto_delete_time' => message_auto_delete_time)
  end
  
  # Selects a message sender to send messages in a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_sender_id [TD::Types::MessageSender] New message sender for the chat.
  # @return [TD::Types::Ok]
  def set_chat_message_sender(chat_id:, message_sender_id:)
    broadcast('@type'             => 'setChatMessageSender',
              'chat_id'           => chat_id,
              'message_sender_id' => message_sender_id)
  end
  
  # Changes the notification settings of a chat.
  # Notification settings of a chat with the current user (Saved Messages) can't be changed.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param notification_settings [TD::Types::ChatNotificationSettings] New notification settings for the chat.
  #   If the chat is muted for more than 366 days, it is considered to be muted forever.
  # @return [TD::Types::Ok]
  def set_chat_notification_settings(chat_id:, notification_settings:)
    broadcast('@type'                 => 'setChatNotificationSettings',
              'chat_id'               => chat_id,
              'notification_settings' => notification_settings)
  end
  
  # Changes the chat members permissions.
  # Supported only for basic groups and supergroups.
  # Requires can_restrict_members administrator right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param permissions [TD::Types::ChatPermissions] New non-administrator members permissions in the chat.
  # @return [TD::Types::Ok]
  def set_chat_permissions(chat_id:, permissions:)
    broadcast('@type'       => 'setChatPermissions',
              'chat_id'     => chat_id,
              'permissions' => permissions)
  end
  
  # Changes the photo of a chat.
  # Supported only for basic groups, supergroups and channels.
  # Requires can_change_info member right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param photo [TD::Types::InputChatPhoto] New chat photo; pass null to delete the chat photo.
  # @return [TD::Types::Ok]
  def set_chat_photo(chat_id:, photo:)
    broadcast('@type'   => 'setChatPhoto',
              'chat_id' => chat_id,
              'photo'   => photo)
  end
  
  # Changes the list of pinned stories on a chat page; requires can_edit_stories right in the chat.
  #
  # @param chat_id [Integer] Identifier of the chat that posted the stories.
  # @param story_ids [Array<Integer>] New list of pinned stories.
  #   All stories must be posted to the chat page first.
  #   There can be up to getOption("pinned_story_count_max") pinned stories on a chat page.
  # @return [TD::Types::Ok]
  def set_chat_pinned_stories(chat_id:, story_ids:)
    broadcast('@type'     => 'setChatPinnedStories',
              'chat_id'   => chat_id,
              'story_ids' => story_ids)
  end
  
  # Changes accent color and background custom emoji for profile of a supergroup or channel chat.
  # Requires can_change_info administrator right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param profile_accent_color_id [Integer] Identifier of the accent color to use for profile; pass -1 if none.
  #   The chat must have at least profileAccentColor.min_supergroup_chat_boost_level for supergroups or
  #   profileAccentColor.min_channel_chat_boost_level for channels boost level to pass the corresponding color.
  # @param profile_background_custom_emoji_id [Integer] Identifier of a custom emoji to be shown on the chat's profile
  #   photo background; 0 if none.
  #   Use chatBoostLevelFeatures.can_set_profile_background_custom_emoji to check whether a custom emoji can be set.
  # @return [TD::Types::Ok]
  def set_chat_profile_accent_color(chat_id:, profile_accent_color_id:, profile_background_custom_emoji_id:)
    broadcast('@type'                              => 'setChatProfileAccentColor',
              'chat_id'                            => chat_id,
              'profile_accent_color_id'            => profile_accent_color_id,
              'profile_background_custom_emoji_id' => profile_background_custom_emoji_id)
  end
  
  # Changes the slow mode delay of a chat.
  # Available only for supergroups; requires can_restrict_members right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param slow_mode_delay [Integer] New slow mode delay for the chat, in seconds; must be one of 0, 10, 30, 60, 300,
  #   900, 3600.
  # @return [TD::Types::Ok]
  def set_chat_slow_mode_delay(chat_id:, slow_mode_delay:)
    broadcast('@type'           => 'setChatSlowModeDelay',
              'chat_id'         => chat_id,
              'slow_mode_delay' => slow_mode_delay)
  end
  
  # Changes the chat theme.
  # Supported only in private and secret chats.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param theme_name [TD::Types::String] Name of the new chat theme; pass an empty string to return the default theme.
  # @return [TD::Types::Ok]
  def set_chat_theme(chat_id:, theme_name:)
    broadcast('@type'      => 'setChatTheme',
              'chat_id'    => chat_id,
              'theme_name' => theme_name)
  end
  
  # Changes the chat title.
  # Supported only for basic groups, supergroups and channels.
  # Requires can_change_info member right.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param title [TD::Types::String] New title of the chat; 1-128 characters.
  # @return [TD::Types::Ok]
  def set_chat_title(chat_id:, title:)
    broadcast('@type'   => 'setChatTitle',
              'chat_id' => chat_id,
              'title'   => title)
  end
  
  # Changes the list of close friends of the current user.
  #
  # @param user_ids [Array<Integer>] User identifiers of close friends; the users must be contacts of the current user.
  # @return [TD::Types::Ok]
  def set_close_friends(user_ids:)
    broadcast('@type'    => 'setCloseFriends',
              'user_ids' => user_ids)
  end
  
  # Sets the list of commands supported by the bot for the given user scope and language; for bots only.
  #
  # @param scope [TD::Types::BotCommandScope] The scope to which the commands are relevant; pass null to change
  #   commands in the default bot command scope.
  # @param language_code [TD::Types::String] A two-letter ISO 639-1 language code.
  #   If empty, the commands will be applied to all users from the given scope, for which language there are no
  #   dedicated commands.
  # @param commands [Array<TD::Types::BotCommand>] List of the bot's commands.
  # @return [TD::Types::Ok]
  def set_commands(scope:, language_code:, commands:)
    broadcast('@type'         => 'setCommands',
              'scope'         => scope,
              'language_code' => language_code,
              'commands'      => commands)
  end
  
  # Sets a custom emoji sticker set thumbnail.
  #
  # @param name [TD::Types::String] Sticker set name.
  #   The sticker set must be owned by the current user.
  # @param custom_emoji_id [Integer] Identifier of the custom emoji from the sticker set, which will be set as sticker
  #   set thumbnail; pass 0 to remove the sticker set thumbnail.
  # @return [TD::Types::Ok]
  def set_custom_emoji_sticker_set_thumbnail(name:, custom_emoji_id:)
    broadcast('@type'           => 'setCustomEmojiStickerSetThumbnail',
              'name'            => name,
              'custom_emoji_id' => custom_emoji_id)
  end
  
  # Adds or changes a custom local language pack to the current localization target.
  #
  # @param info [TD::Types::LanguagePackInfo] Information about the language pack.
  #   Language pack identifier must start with 'X', consist only of English letters, digits and hyphens, and must not
  #   exceed 64 characters.
  #   Can be called before authorization.
  # @param strings [Array<TD::Types::LanguagePackString>] Strings of the new language pack.
  # @return [TD::Types::Ok]
  def set_custom_language_pack(info:, strings:)
    broadcast('@type'   => 'setCustomLanguagePack',
              'info'    => info,
              'strings' => strings)
  end
  
  # Adds, edits or deletes a string in a custom local language pack.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Identifier of a previously added custom local language pack in the
  #   current localization target.
  # @param new_string [TD::Types::LanguagePackString] New language pack string.
  # @return [TD::Types::Ok]
  def set_custom_language_pack_string(language_pack_id:, new_string:)
    broadcast('@type'            => 'setCustomLanguagePackString',
              'language_pack_id' => language_pack_id,
              'new_string'       => new_string)
  end
  
  # Changes the database encryption key.
  # Usually the encryption key is never changed and is stored in some OS keychain.
  #
  # @param new_encryption_key [String] New encryption key.
  # @return [TD::Types::Ok]
  def set_database_encryption_key(new_encryption_key:)
    broadcast('@type'              => 'setDatabaseEncryptionKey',
              'new_encryption_key' => new_encryption_key)
  end
  
  # Sets default background for chats; adds the background to the list of installed backgrounds.
  #
  # @param background [TD::Types::InputBackground] The input background to use; pass null to create a new filled
  #   background.
  # @param type [TD::Types::BackgroundType] Background type; pass null to use the default type of the remote
  #   background; {TD::Types::BackgroundType::ChatTheme} isn't supported.
  # @param for_dark_theme [Boolean] Pass true if the background is set for a dark theme.
  # @return [TD::Types::Background]
  def set_default_background(background:, type:, for_dark_theme:)
    broadcast('@type'          => 'setDefaultBackground',
              'background'     => background,
              'type'           => type,
              'for_dark_theme' => for_dark_theme)
  end
  
  # Sets default administrator rights for adding the bot to channel chats; for bots only.
  #
  # @param default_channel_administrator_rights [TD::Types::ChatAdministratorRights] Default administrator rights for
  #   adding the bot to channels; pass null to remove default rights.
  # @return [TD::Types::Ok]
  def set_default_channel_administrator_rights(default_channel_administrator_rights:)
    broadcast('@type'                                => 'setDefaultChannelAdministratorRights',
              'default_channel_administrator_rights' => default_channel_administrator_rights)
  end
  
  # Sets default administrator rights for adding the bot to basic group and supergroup chats; for bots only.
  #
  # @param default_group_administrator_rights [TD::Types::ChatAdministratorRights] Default administrator rights for
  #   adding the bot to basic group and supergroup chats; pass null to remove default rights.
  # @return [TD::Types::Ok]
  def set_default_group_administrator_rights(default_group_administrator_rights:)
    broadcast('@type'                              => 'setDefaultGroupAdministratorRights',
              'default_group_administrator_rights' => default_group_administrator_rights)
  end
  
  # Changes the default message auto-delete time for new chats.
  #
  # @param message_auto_delete_time [TD::Types::MessageAutoDeleteTime] New default message auto-delete time; must be
  #   from 0 up to 365 * 86400 and be divisible by 86400.
  #   If 0, then messages aren't deleted automatically.
  # @return [TD::Types::Ok]
  def set_default_message_auto_delete_time(message_auto_delete_time:)
    broadcast('@type'                    => 'setDefaultMessageAutoDeleteTime',
              'message_auto_delete_time' => message_auto_delete_time)
  end
  
  # Changes type of default reaction for the current user.
  #
  # @param reaction_type [TD::Types::ReactionType] New type of the default reaction.
  #   The paid reaction can't be set as default.
  # @return [TD::Types::Ok]
  def set_default_reaction_type(reaction_type:)
    broadcast('@type'         => 'setDefaultReactionType',
              'reaction_type' => reaction_type)
  end
  
  # Changes the emoji status of the current user; for Telegram Premium users only.
  #
  # @param emoji_status [TD::Types::EmojiStatus] New emoji status; pass null to switch to the default badge.
  # @return [TD::Types::Ok]
  def set_emoji_status(emoji_status:)
    broadcast('@type'        => 'setEmojiStatus',
              'emoji_status' => emoji_status)
  end
  
  # Informs TDLib on a file generation progress.
  #
  # @param generation_id [Integer] The identifier of the generation process.
  # @param expected_size [Integer] Expected size of the generated file, in bytes; 0 if unknown.
  # @param local_prefix_size [Integer] The number of bytes already generated.
  # @return [TD::Types::Ok]
  def set_file_generation_progress(generation_id:, expected_size:, local_prefix_size:)
    broadcast('@type'             => 'setFileGenerationProgress',
              'generation_id'     => generation_id,
              'expected_size'     => expected_size,
              'local_prefix_size' => local_prefix_size)
  end
  
  # Changes the notification settings of a forum topic.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @param notification_settings [TD::Types::ChatNotificationSettings] New notification settings for the forum topic.
  #   If the topic is muted for more than 366 days, it is considered to be muted forever.
  # @return [TD::Types::Ok]
  def set_forum_topic_notification_settings(chat_id:, message_thread_id:, notification_settings:)
    broadcast('@type'                 => 'setForumTopicNotificationSettings',
              'chat_id'               => chat_id,
              'message_thread_id'     => message_thread_id,
              'notification_settings' => notification_settings)
  end
  
  # Updates the game score of the specified user in the game; for bots only.
  #
  # @param chat_id [Integer] The chat to which the message with the game belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param edit_message [Boolean] Pass true to edit the game message to include the current scoreboard.
  # @param user_id [Integer] User identifier.
  # @param score [Integer] The new score.
  # @param force [Boolean] Pass true to update the score even if it decreases.
  #   If the score is 0, the user will be deleted from the high score table.
  # @return [TD::Types::Message]
  def set_game_score(chat_id:, message_id:, edit_message:, user_id:, score:, force:)
    broadcast('@type'        => 'setGameScore',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'edit_message' => edit_message,
              'user_id'      => user_id,
              'score'        => score,
              'force'        => force)
  end
  
  # Informs TDLib that speaking state of a participant of an active group has changed.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param audio_source [Integer] Group call participant's synchronization audio source identifier, or 0 for the
  #   current user.
  # @param is_speaking [Boolean] Pass true if the user is speaking.
  # @return [TD::Types::Ok]
  def set_group_call_participant_is_speaking(group_call_id:, audio_source:, is_speaking:)
    broadcast('@type'         => 'setGroupCallParticipantIsSpeaking',
              'group_call_id' => group_call_id,
              'audio_source'  => audio_source,
              'is_speaking'   => is_speaking)
  end
  
  # Changes volume level of a participant of an active group call.
  # If the current user can manage the group call, then the participant's volume level will be changed for all users
  #   with the default volume level.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param participant_id [TD::Types::MessageSender] Participant identifier.
  # @param volume_level [Integer] New participant's volume level; 1-20000 in hundreds of percents.
  # @return [TD::Types::Ok]
  def set_group_call_participant_volume_level(group_call_id:, participant_id:, volume_level:)
    broadcast('@type'          => 'setGroupCallParticipantVolumeLevel',
              'group_call_id'  => group_call_id,
              'participant_id' => participant_id,
              'volume_level'   => volume_level)
  end
  
  # Sets group call title.
  # Requires groupCall.can_be_managed group call flag.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param title [TD::Types::String] New group call title; 1-64 characters.
  # @return [TD::Types::Ok]
  def set_group_call_title(group_call_id:, title:)
    broadcast('@type'         => 'setGroupCallTitle',
              'group_call_id' => group_call_id,
              'title'         => title)
  end
  
  # Changes the period of inactivity after which sessions will automatically be terminated.
  #
  # @param inactive_session_ttl_days [Integer] New number of days of inactivity before sessions will be automatically
  #   terminated; 1-366 days.
  # @return [TD::Types::Ok]
  def set_inactive_session_ttl(inactive_session_ttl_days:)
    broadcast('@type'                     => 'setInactiveSessionTtl',
              'inactive_session_ttl_days' => inactive_session_ttl_days)
  end
  
  # Updates the game score of the specified user in a game; for bots only.
  #
  # @param inline_message_id [TD::Types::String] Inline message identifier.
  # @param edit_message [Boolean] Pass true to edit the game message to include the current scoreboard.
  # @param user_id [Integer] User identifier.
  # @param score [Integer] The new score.
  # @param force [Boolean] Pass true to update the score even if it decreases.
  #   If the score is 0, the user will be deleted from the high score table.
  # @return [TD::Types::Ok]
  def set_inline_game_score(inline_message_id:, edit_message:, user_id:, score:, force:)
    broadcast('@type'             => 'setInlineGameScore',
              'inline_message_id' => inline_message_id,
              'edit_message'      => edit_message,
              'user_id'           => user_id,
              'score'             => score,
              'force'             => force)
  end
  
  # Changes the location of the current user.
  # Needs to be called if getOption("is_location_visible") is true and location changes for more than 1 kilometer.
  # Must not be called if the user has a business location.
  #
  # @param location [TD::Types::Location] The new location of the user.
  # @return [TD::Types::Ok]
  def set_location(location:)
    broadcast('@type'    => 'setLocation',
              'location' => location)
  end
  
  # Sets new log stream for internal logging of TDLib.
  # Can be called synchronously.
  #
  # @param log_stream [TD::Types::LogStream] New log stream.
  # @return [TD::Types::Ok]
  def set_log_stream(log_stream:)
    broadcast('@type'      => 'setLogStream',
              'log_stream' => log_stream)
  end
  
  # Sets the verbosity level for a specified TDLib internal log tag.
  # Can be called synchronously.
  #
  # @param tag [TD::Types::String] Logging tag to change verbosity level.
  # @param new_verbosity_level [Integer] New verbosity level; 1-1024.
  # @return [TD::Types::Ok]
  def set_log_tag_verbosity_level(tag:, new_verbosity_level:)
    broadcast('@type'               => 'setLogTagVerbosityLevel',
              'tag'                 => tag,
              'new_verbosity_level' => new_verbosity_level)
  end
  
  # Sets the verbosity level of the internal logging of TDLib.
  # Can be called synchronously.
  #
  # @param new_verbosity_level [Integer] New value of the verbosity level for logging.
  #   Value 0 corresponds to fatal errors, value 1 corresponds to errors, value 2 corresponds to warnings and debug
  #   warnings, value 3 corresponds to informational, value 4 corresponds to debug, value 5 corresponds to verbose debug,
  #   value greater than 5 and up to 1023 can be used to enable even more logging.
  # @return [TD::Types::Ok]
  def set_log_verbosity_level(new_verbosity_level:)
    broadcast('@type'               => 'setLogVerbosityLevel',
              'new_verbosity_level' => new_verbosity_level)
  end
  
  # Changes the login email address of the user.
  # The email address can be changed only if the current user already has login email and
  #   passwordState.login_email_address_pattern is non-empty.
  # The change will not be applied until the new login email address is confirmed with checkLoginEmailAddressCode.
  # To use Apple ID/Google ID instead of an email address, call checkLoginEmailAddressCode directly.
  #
  # @param new_login_email_address [TD::Types::String] New login email address.
  # @return [TD::Types::EmailAddressAuthenticationCodeInfo]
  def set_login_email_address(new_login_email_address:)
    broadcast('@type'                   => 'setLoginEmailAddress',
              'new_login_email_address' => new_login_email_address)
  end
  
  # Sets menu button for the given user or for all users; for bots only.
  #
  # @param user_id [Integer] Identifier of the user or 0 to set menu button for all users.
  # @param menu_button [TD::Types::BotMenuButton] New menu button.
  # @return [TD::Types::Ok]
  def set_menu_button(user_id:, menu_button:)
    broadcast('@type'       => 'setMenuButton',
              'user_id'     => user_id,
              'menu_button' => menu_button)
  end
  
  # Changes the fact-check of a message.
  # Can be only used if messageProperties.can_set_fact_check == true.
  #
  # @param chat_id [Integer] The channel chat the message belongs to.
  # @param message_id [Integer] Identifier of the message.
  # @param text [TD::Types::FormattedText] New text of the fact-check; 0-getOption("fact_check_length_max") characters;
  #   pass null to remove it.
  #   Only Bold, Italic, and TextUrl entities with https://t.me/ links are supported.
  # @return [TD::Types::Ok]
  def set_message_fact_check(chat_id:, message_id:, text:)
    broadcast('@type'      => 'setMessageFactCheck',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'text'       => text)
  end
  
  # Sets reactions on a message; for bots only.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param reaction_types [Array<TD::Types::ReactionType>] Types of the reaction to set.
  # @param is_big [Boolean] Pass true if the reactions are added with a big animation.
  # @return [TD::Types::Ok]
  def set_message_reactions(chat_id:, message_id:, reaction_types:, is_big:)
    broadcast('@type'          => 'setMessageReactions',
              'chat_id'        => chat_id,
              'message_id'     => message_id,
              'reaction_types' => reaction_types,
              'is_big'         => is_big)
  end
  
  # Changes the block list of a message sender.
  # Currently, only users and supergroup chats can be blocked.
  #
  # @param sender_id [TD::Types::MessageSender] Identifier of a message sender to block/unblock.
  # @param block_list [TD::Types::BlockList] New block list for the message sender; pass null to unblock the message
  #   sender.
  # @return [TD::Types::Ok]
  def set_message_sender_block_list(sender_id:, block_list:)
    broadcast('@type'      => 'setMessageSenderBlockList',
              'sender_id'  => sender_id,
              'block_list' => block_list)
  end
  
  # Changes the first and last name of the current user.
  #
  # @param first_name [TD::Types::String] The new value of the first name for the current user; 1-64 characters.
  # @param last_name [TD::Types::String] The new value of the optional last name for the current user; 0-64 characters.
  # @return [TD::Types::Ok]
  def set_name(first_name:, last_name:)
    broadcast('@type'      => 'setName',
              'first_name' => first_name,
              'last_name'  => last_name)
  end
  
  # Sets the current network type.
  # Can be called before authorization.
  # Calling this method forces all network connections to reopen, mitigating the delay in switching between different
  #   networks, so it must be called whenever the network is changed, even if the network type remains the same.
  # Network type is used to check whether the library can use the network at all and also for collecting detailed
  #   network data usage statistics.
  #
  # @param type [TD::Types::NetworkType] The new network type; pass null to set network type to networkTypeOther.
  # @return [TD::Types::Ok]
  def set_network_type(type:)
    broadcast('@type' => 'setNetworkType',
              'type'  => type)
  end
  
  # Changes privacy settings for new chat creation; can be used only if getOption("can_set_new_chat_privacy_settings").
  #
  # @param settings [TD::Types::NewChatPrivacySettings] New settings.
  # @return [TD::Types::Ok]
  def set_new_chat_privacy_settings(settings:)
    broadcast('@type'    => 'setNewChatPrivacySettings',
              'settings' => settings)
  end
  
  # Sets the value of an option.
  # (Check the list of available options on https://core.telegram.org/tdlib/options.) Only writable options can be set.
  # Can be called before authorization.
  #
  # @param name [TD::Types::String] The name of the option.
  # @param value [TD::Types::OptionValue] The new value of the option; pass null to reset option value to a default
  #   value.
  # @return [TD::Types::Ok]
  def set_option(name:, value:)
    broadcast('@type' => 'setOption',
              'name'  => name,
              'value' => value)
  end
  
  # Adds an element to the user's Telegram Passport.
  # May return an error with a message "PHONE_VERIFICATION_NEEDED" or "EMAIL_VERIFICATION_NEEDED" if the chosen phone
  #   number or the chosen email address must be verified first.
  #
  # @param element [TD::Types::InputPassportElement] Input Telegram Passport element.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::PassportElement]
  def set_passport_element(element:, password:)
    broadcast('@type'    => 'setPassportElement',
              'element'  => element,
              'password' => password)
  end
  
  # Informs the user that some of the elements in their Telegram Passport contain errors; for bots only.
  # The user will not be able to resend the elements, until the errors are fixed.
  #
  # @param user_id [Integer] User identifier.
  # @param errors [Array<TD::Types::InputPassportElementError>] The errors.
  # @return [TD::Types::Ok]
  def set_passport_element_errors(user_id:, errors:)
    broadcast('@type'   => 'setPassportElementErrors',
              'user_id' => user_id,
              'errors'  => errors)
  end
  
  # Changes the 2-step verification password for the current user.
  # If a new recovery email address is specified, then the change will not be applied until the new recovery email
  #   address is confirmed.
  #
  # @param old_password [TD::Types::String] Previous 2-step verification password of the user.
  # @param new_password [TD::Types::String, nil] New 2-step verification password of the user; may be empty to remove
  #   the password.
  # @param new_hint [TD::Types::String, nil] New password hint; may be empty.
  # @param set_recovery_email_address [Boolean] Pass true to change also the recovery email address.
  # @param new_recovery_email_address [TD::Types::String, nil] New recovery email address; may be empty.
  # @return [TD::Types::PasswordState]
  def set_password(old_password:, new_password: nil, new_hint: nil, set_recovery_email_address: false,
                   new_recovery_email_address: nil)
    broadcast('@type'                      => 'setPassword',
              'old_password'               => old_password,
              'new_password'               => new_password,
              'new_hint'                   => new_hint,
              'set_recovery_email_address' => set_recovery_email_address,
              'new_recovery_email_address' => new_recovery_email_address)
  end
  
  # Changes the personal chat of the current user.
  #
  # @param chat_id [Integer] Identifier of the new personal chat; pass 0 to remove the chat.
  #   Use getSuitablePersonalChats to get suitable chats.
  # @return [TD::Types::Ok]
  def set_personal_chat(chat_id:)
    broadcast('@type'   => 'setPersonalChat',
              'chat_id' => chat_id)
  end
  
  # Changes the order of pinned chats.
  #
  # @param chat_list [TD::Types::ChatList] Chat list in which to change the order of pinned chats.
  # @param chat_ids [Array<Integer>] The new list of pinned chats.
  # @return [TD::Types::Ok]
  def set_pinned_chats(chat_list:, chat_ids:)
    broadcast('@type'     => 'setPinnedChats',
              'chat_list' => chat_list,
              'chat_ids'  => chat_ids)
  end
  
  # Changes the order of pinned forum topics; requires can_manage_topics right in the supergroup.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_ids [Array<Integer>] The new list of pinned forum topics.
  # @return [TD::Types::Ok]
  def set_pinned_forum_topics(chat_id:, message_thread_ids:)
    broadcast('@type'              => 'setPinnedForumTopics',
              'chat_id'            => chat_id,
              'message_thread_ids' => message_thread_ids)
  end
  
  # Changes the order of pinned Saved Messages topics.
  #
  # @param saved_messages_topic_ids [Array<Integer>] Identifiers of the new pinned Saved Messages topics.
  # @return [TD::Types::Ok]
  def set_pinned_saved_messages_topics(saved_messages_topic_ids:)
    broadcast('@type'                    => 'setPinnedSavedMessagesTopics',
              'saved_messages_topic_ids' => saved_messages_topic_ids)
  end
  
  # Changes the user answer to a poll.
  # A poll in quiz mode can be answered only once.
  #
  # @param chat_id [Integer] Identifier of the chat to which the poll belongs.
  # @param message_id [Integer] Identifier of the message containing the poll.
  # @param option_ids [Array<Integer>] 0-based identifiers of answer options, chosen by the user.
  #   User can choose more than 1 answer option only is the poll allows multiple answers.
  # @return [TD::Types::Ok]
  def set_poll_answer(chat_id:, message_id:, option_ids:)
    broadcast('@type'      => 'setPollAnswer',
              'chat_id'    => chat_id,
              'message_id' => message_id,
              'option_ids' => option_ids)
  end
  
  # Changes accent color and background custom emoji for profile of the current user; for Telegram Premium users only.
  #
  # @param profile_accent_color_id [Integer] Identifier of the accent color to use for profile; pass -1 if none.
  # @param profile_background_custom_emoji_id [Integer] Identifier of a custom emoji to be shown on the user's profile
  #   photo background; 0 if none.
  # @return [TD::Types::Ok]
  def set_profile_accent_color(profile_accent_color_id:, profile_background_custom_emoji_id:)
    broadcast('@type'                              => 'setProfileAccentColor',
              'profile_accent_color_id'            => profile_accent_color_id,
              'profile_background_custom_emoji_id' => profile_background_custom_emoji_id)
  end
  
  # Changes a profile photo for the current user.
  #
  # @param photo [TD::Types::InputChatPhoto] Profile photo to set.
  # @param is_public [Boolean] Pass true to set a public photo, which will be visible even the main photo is hidden by
  #   privacy settings.
  # @return [TD::Types::Ok]
  def set_profile_photo(photo:, is_public:)
    broadcast('@type'     => 'setProfilePhoto',
              'photo'     => photo,
              'is_public' => is_public)
  end
  
  # Changes name of a quick reply shortcut.
  #
  # @param shortcut_id [Integer] Unique identifier of the quick reply shortcut.
  # @param name [TD::Types::String] New name for the shortcut.
  #   Use checkQuickReplyShortcutName to check its validness.
  # @return [TD::Types::Ok]
  def set_quick_reply_shortcut_name(shortcut_id:, name:)
    broadcast('@type'       => 'setQuickReplyShortcutName',
              'shortcut_id' => shortcut_id,
              'name'        => name)
  end
  
  # Changes notification settings for reactions.
  #
  # @param notification_settings [TD::Types::ReactionNotificationSettings] The new notification settings for reactions.
  # @return [TD::Types::Ok]
  def set_reaction_notification_settings(notification_settings:)
    broadcast('@type'                 => 'setReactionNotificationSettings',
              'notification_settings' => notification_settings)
  end
  
  # Changes privacy settings for message read date.
  #
  # @param settings [TD::Types::ReadDatePrivacySettings] New settings.
  # @return [TD::Types::Ok]
  def set_read_date_privacy_settings(settings:)
    broadcast('@type'    => 'setReadDatePrivacySettings',
              'settings' => settings)
  end
  
  # Changes the 2-step verification recovery email address of the user.
  # If a new recovery email address is specified, then the change will not be applied until the new recovery email
  #   address is confirmed.
  # If new_recovery_email_address is the same as the email address that is currently set up, this call succeeds
  #   immediately and aborts all other requests waiting for an email confirmation.
  #
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @param new_recovery_email_address [TD::Types::String] New recovery email address.
  # @return [TD::Types::PasswordState]
  def set_recovery_email_address(password:, new_recovery_email_address:)
    broadcast('@type'                      => 'setRecoveryEmailAddress',
              'password'                   => password,
              'new_recovery_email_address' => new_recovery_email_address)
  end
  
  # Changes label of a Saved Messages tag; for Telegram Premium users only.
  #
  # @param tag [TD::Types::ReactionType] The tag which label will be changed.
  # @param label [TD::Types::String] New label for the tag; 0-12 characters.
  # @return [TD::Types::Ok]
  def set_saved_messages_tag_label(tag:, label:)
    broadcast('@type' => 'setSavedMessagesTagLabel',
              'tag'   => tag,
              'label' => label)
  end
  
  # Changes notification settings for chats of a given type.
  #
  # @param scope [TD::Types::NotificationSettingsScope] Types of chats for which to change the notification settings.
  # @param notification_settings [TD::Types::ScopeNotificationSettings] The new notification settings for the given
  #   scope.
  # @return [TD::Types::Ok]
  def set_scope_notification_settings(scope:, notification_settings:)
    broadcast('@type'                 => 'setScopeNotificationSettings',
              'scope'                 => scope,
              'notification_settings' => notification_settings)
  end
  
  # Changes the list of emojis corresponding to a sticker.
  # The sticker must belong to a regular or custom emoji sticker set that is owned by the current user.
  #
  # @param sticker [TD::Types::InputFile] Sticker.
  # @param emojis [TD::Types::String] New string with 1-20 emoji corresponding to the sticker.
  # @return [TD::Types::Ok]
  def set_sticker_emojis(sticker:, emojis:)
    broadcast('@type'   => 'setStickerEmojis',
              'sticker' => sticker,
              'emojis'  => emojis)
  end
  
  # Changes the list of keywords of a sticker.
  # The sticker must belong to a regular or custom emoji sticker set that is owned by the current user.
  #
  # @param sticker [TD::Types::InputFile] Sticker.
  # @param keywords [Array<TD::Types::String>] List of up to 20 keywords with total length up to 64 characters, which
  #   can be used to find the sticker.
  # @return [TD::Types::Ok]
  def set_sticker_keywords(sticker:, keywords:)
    broadcast('@type'    => 'setStickerKeywords',
              'sticker'  => sticker,
              'keywords' => keywords)
  end
  
  # Changes the mask position of a mask sticker.
  # The sticker must belong to a mask sticker set that is owned by the current user.
  #
  # @param sticker [TD::Types::InputFile] Sticker.
  # @param mask_position [TD::Types::MaskPosition] Position where the mask is placed; pass null to remove mask
  #   position.
  # @return [TD::Types::Ok]
  def set_sticker_mask_position(sticker:, mask_position:)
    broadcast('@type'         => 'setStickerMaskPosition',
              'sticker'       => sticker,
              'mask_position' => mask_position)
  end
  
  # Changes the position of a sticker in the set to which it belongs.
  # The sticker set must be owned by the current user.
  #
  # @param sticker [TD::Types::InputFile] Sticker.
  # @param position [Integer] New position of the sticker in the set, 0-based.
  # @return [TD::Types::Ok]
  def set_sticker_position_in_set(sticker:, position:)
    broadcast('@type'    => 'setStickerPositionInSet',
              'sticker'  => sticker,
              'position' => position)
  end
  
  # Sets a sticker set thumbnail.
  #
  # @param user_id [Integer] Sticker set owner; ignored for regular users.
  # @param name [TD::Types::String] Sticker set name.
  #   The sticker set must be owned by the current user.
  # @param thumbnail [TD::Types::InputFile] Thumbnail to set; pass null to remove the sticker set thumbnail.
  # @param format [TD::Types::StickerFormat] Format of the thumbnail; pass null if thumbnail is removed.
  # @return [TD::Types::Ok]
  def set_sticker_set_thumbnail(user_id:, name:, thumbnail:, format:)
    broadcast('@type'     => 'setStickerSetThumbnail',
              'user_id'   => user_id,
              'name'      => name,
              'thumbnail' => thumbnail,
              'format'    => format)
  end
  
  # Sets a sticker set title.
  #
  # @param name [TD::Types::String] Sticker set name.
  #   The sticker set must be owned by the current user.
  # @param title [TD::Types::String] New sticker set title.
  # @return [TD::Types::Ok]
  def set_sticker_set_title(name:, title:)
    broadcast('@type' => 'setStickerSetTitle',
              'name'  => name,
              'title' => title)
  end
  
  # Changes privacy settings of a story.
  # The method can be called only for stories posted on behalf of the current user and if story.can_be_edited == true.
  #
  # @param story_id [Integer] Identifier of the story.
  # @param privacy_settings [TD::Types::StoryPrivacySettings] The new privacy settigs for the story.
  # @return [TD::Types::Ok]
  def set_story_privacy_settings(story_id:, privacy_settings:)
    broadcast('@type'            => 'setStoryPrivacySettings',
              'story_id'         => story_id,
              'privacy_settings' => privacy_settings)
  end
  
  # Changes chosen reaction on a story that has already been sent.
  #
  # @param story_sender_chat_id [Integer] The identifier of the sender of the story.
  # @param story_id [Integer] The identifier of the story.
  # @param reaction_type [TD::Types::ReactionType] Type of the reaction to set; pass null to remove the reaction.
  #   Custom emoji reactions can be used only by Telegram Premium users.
  #   Paid reactions can't be set.
  # @param update_recent_reactions [Boolean] Pass true if the reaction needs to be added to recent reactions.
  # @return [TD::Types::Ok]
  def set_story_reaction(story_sender_chat_id:, story_id:, reaction_type:, update_recent_reactions:)
    broadcast('@type'                   => 'setStoryReaction',
              'story_sender_chat_id'    => story_sender_chat_id,
              'story_id'                => story_id,
              'reaction_type'           => reaction_type,
              'update_recent_reactions' => update_recent_reactions)
  end
  
  # Changes the custom emoji sticker set of a supergroup; requires can_change_info administrator right.
  # The chat must have at least chatBoostFeatures.min_custom_emoji_sticker_set_boost_level boost level to pass the
  #   corresponding color.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param custom_emoji_sticker_set_id [Integer] New value of the custom emoji sticker set identifier for the
  #   supergroup.
  #   Use 0 to remove the custom emoji sticker set in the supergroup.
  # @return [TD::Types::Ok]
  def set_supergroup_custom_emoji_sticker_set(supergroup_id:, custom_emoji_sticker_set_id:)
    broadcast('@type'                       => 'setSupergroupCustomEmojiStickerSet',
              'supergroup_id'               => supergroup_id,
              'custom_emoji_sticker_set_id' => custom_emoji_sticker_set_id)
  end
  
  # Changes the sticker set of a supergroup; requires can_change_info administrator right.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param sticker_set_id [Integer] New value of the supergroup sticker set identifier.
  #   Use 0 to remove the supergroup sticker set.
  # @return [TD::Types::Ok]
  def set_supergroup_sticker_set(supergroup_id:, sticker_set_id:)
    broadcast('@type'          => 'setSupergroupStickerSet',
              'supergroup_id'  => supergroup_id,
              'sticker_set_id' => sticker_set_id)
  end
  
  # Changes the number of times the supergroup must be boosted by a user to ignore slow mode and chat permission
  #   restrictions; requires can_restrict_members administrator right.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param unrestrict_boost_count [Integer] New value of the unrestrict_boost_count supergroup setting; 0-8.
  #   Use 0 to remove the setting.
  # @return [TD::Types::Ok]
  def set_supergroup_unrestrict_boost_count(supergroup_id:, unrestrict_boost_count:)
    broadcast('@type'                  => 'setSupergroupUnrestrictBoostCount',
              'supergroup_id'          => supergroup_id,
              'unrestrict_boost_count' => unrestrict_boost_count)
  end
  
  # Changes the editable username of a supergroup or channel, requires owner privileges in the supergroup or channel.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param username [TD::Types::String] New value of the username.
  #   Use an empty string to remove the username.
  #   The username can't be completely removed if there is another active or disabled username.
  # @return [TD::Types::Ok]
  def set_supergroup_username(supergroup_id:, username:)
    broadcast('@type'         => 'setSupergroupUsername',
              'supergroup_id' => supergroup_id,
              'username'      => username)
  end
  
  # Sets the parameters for TDLib initialization.
  # Works only when the current authorization state is authorizationStateWaitTdlibParameters.
  #
  # @param use_test_dc [Boolean, nil] Pass true to use Telegram test environment instead of the production environment.
  # @param database_directory [TD::Types::String, nil] The path to the directory for the persistent database; if empty,
  #   the current working directory will be used.
  # @param files_directory [TD::Types::String, nil] The path to the directory for storing files; if empty,
  #   database_directory will be used.
  # @param database_encryption_key [String, nil] Encryption key for the database.
  #   If the encryption key is invalid, then an error with code 401 will be returned.
  # @param use_file_database [Boolean, nil] Pass true to keep information about downloaded and uploaded files between
  #   application restarts.
  # @param use_chat_info_database [Boolean, nil] Pass true to keep cache of users, basic groups, supergroups, channels
  #   and secret chats between restarts.
  #   Implies use_file_database.
  # @param use_message_database [Boolean, nil] Pass true to keep cache of chats and messages between restarts.
  #   Implies use_chat_info_database.
  # @param use_secret_chats [Boolean, nil] Pass true to enable support for secret chats.
  # @param api_id [Integer, nil] Application identifier for Telegram API access, which can be obtained at
  #   https://my.telegram.org.
  # @param api_hash [TD::Types::String, nil] Application identifier hash for Telegram API access, which can be obtained
  #   at https://my.telegram.org.
  # @param system_language_code [TD::Types::String] IETF language tag of the user's operating system language; must be
  #   non-empty.
  # @param device_model [TD::Types::String] Model of the device the application is being run on; must be non-empty.
  # @param system_version [TD::Types::String, nil] Version of the operating system the application is being run on.
  #   If empty, the version is automatically detected by TDLib.
  # @param application_version [TD::Types::String] Application version; must be non-empty.
  # @return [TD::Types::Ok]
  def set_tdlib_parameters(use_test_dc: nil, database_directory: nil, files_directory: nil, database_encryption_key:
                           nil, use_file_database: nil, use_chat_info_database: nil, use_message_database: nil,
                           use_secret_chats: nil, api_id: nil, api_hash: nil, system_language_code:, device_model:,
                           system_version: nil, application_version:)
    broadcast('@type'                   => 'setTdlibParameters',
              'use_test_dc'             => use_test_dc,
              'database_directory'      => database_directory,
              'files_directory'         => files_directory,
              'database_encryption_key' => database_encryption_key,
              'use_file_database'       => use_file_database,
              'use_chat_info_database'  => use_chat_info_database,
              'use_message_database'    => use_message_database,
              'use_secret_chats'        => use_secret_chats,
              'api_id'                  => api_id,
              'api_hash'                => api_hash,
              'system_language_code'    => system_language_code,
              'device_model'            => device_model,
              'system_version'          => system_version,
              'application_version'     => application_version)
  end
  
  # Changes a personal profile photo of a contact user.
  #
  # @param user_id [Integer] User identifier.
  # @param photo [TD::Types::InputChatPhoto] Profile photo to set; pass null to delete the photo;
  #   {TD::Types::InputChatPhoto::Previous} isn't supported in this function.
  # @return [TD::Types::Ok]
  def set_user_personal_profile_photo(user_id:, photo:)
    broadcast('@type'   => 'setUserPersonalProfilePhoto',
              'user_id' => user_id,
              'photo'   => photo)
  end
  
  # Changes user privacy settings.
  #
  # @param setting [TD::Types::UserPrivacySetting] The privacy setting.
  # @param rules [TD::Types::UserPrivacySettingRules] The new privacy rules.
  # @return [TD::Types::Ok]
  def set_user_privacy_setting_rules(setting:, rules:)
    broadcast('@type'   => 'setUserPrivacySettingRules',
              'setting' => setting,
              'rules'   => rules)
  end
  
  # Sets support information for the given user; for Telegram support only.
  #
  # @param user_id [Integer] User identifier.
  # @param message [TD::Types::FormattedText] New information message.
  # @return [TD::Types::UserSupportInfo]
  def set_user_support_info(user_id:, message:)
    broadcast('@type'   => 'setUserSupportInfo',
              'user_id' => user_id,
              'message' => message)
  end
  
  # Changes the editable username of the current user.
  #
  # @param username [TD::Types::String] The new value of the username.
  #   Use an empty string to remove the username.
  #   The username can't be completely removed if there is another active or disabled username.
  # @return [TD::Types::Ok]
  def set_username(username:)
    broadcast('@type'    => 'setUsername',
              'username' => username)
  end
  
  # Changes default participant identifier, on whose behalf a video chat in the chat will be joined.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param default_participant_id [TD::Types::MessageSender] Default group call participant identifier to join the
  #   video chats.
  # @return [TD::Types::Ok]
  def set_video_chat_default_participant(chat_id:, default_participant_id:)
    broadcast('@type'                  => 'setVideoChatDefaultParticipant',
              'chat_id'                => chat_id,
              'default_participant_id' => default_participant_id)
  end
  
  # Shares a chat after pressing a keyboardButtonTypeRequestChat button with the bot.
  #
  # @param chat_id [Integer] Identifier of the chat with the bot.
  # @param message_id [Integer] Identifier of the message with the button.
  # @param button_id [Integer] Identifier of the button.
  # @param shared_chat_id [Integer] Identifier of the shared chat.
  # @param only_check [Boolean] Pass true to check that the chat can be shared by the button instead of actually
  #   sharing it.
  #   Doesn't check bot_is_member and bot_administrator_rights restrictions.
  #   If the bot must be a member, then all chats from getGroupsInCommon and all chats, where the user can add the bot,
  #   are suitable.
  #   In the latter case the bot will be automatically added to the chat.
  #   If the bot must be an administrator, then all chats, where the bot already has requested rights or can be added
  #   to administrators by the user, are suitable.
  #   In the latter case the bot will be automatically granted requested rights.
  # @return [TD::Types::Ok]
  def share_chat_with_bot(chat_id:, message_id:, button_id:, shared_chat_id:, only_check:)
    broadcast('@type'          => 'shareChatWithBot',
              'chat_id'        => chat_id,
              'message_id'     => message_id,
              'button_id'      => button_id,
              'shared_chat_id' => shared_chat_id,
              'only_check'     => only_check)
  end
  
  # Shares the phone number of the current user with a mutual contact.
  # Supposed to be called when the user clicks on chatActionBarSharePhoneNumber.
  #
  # @param user_id [Integer] Identifier of the user with whom to share the phone number.
  #   The user must be a mutual contact.
  # @return [TD::Types::Ok]
  def share_phone_number(user_id:)
    broadcast('@type'   => 'sharePhoneNumber',
              'user_id' => user_id)
  end
  
  # Shares users after pressing a keyboardButtonTypeRequestUsers button with the bot.
  #
  # @param chat_id [Integer] Identifier of the chat with the bot.
  # @param message_id [Integer] Identifier of the message with the button.
  # @param button_id [Integer] Identifier of the button.
  # @param shared_user_ids [Array<Integer>] Identifiers of the shared users.
  # @param only_check [Boolean] Pass true to check that the users can be shared by the button instead of actually
  #   sharing them.
  # @return [TD::Types::Ok]
  def share_users_with_bot(chat_id:, message_id:, button_id:, shared_user_ids:, only_check:)
    broadcast('@type'           => 'shareUsersWithBot',
              'chat_id'         => chat_id,
              'message_id'      => message_id,
              'button_id'       => button_id,
              'shared_user_ids' => shared_user_ids,
              'only_check'      => only_check)
  end
  
  # Starts recording of an active group call.
  # Requires groupCall.can_be_managed group call flag.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param title [TD::Types::String] Group call recording title; 0-64 characters.
  # @param record_video [Boolean] Pass true to record a video file instead of an audio file.
  # @param use_portrait_orientation [Boolean] Pass true to use portrait orientation for video instead of landscape one.
  # @return [TD::Types::Ok]
  def start_group_call_recording(group_call_id:, title:, record_video:, use_portrait_orientation:)
    broadcast('@type'                    => 'startGroupCallRecording',
              'group_call_id'            => group_call_id,
              'title'                    => title,
              'record_video'             => record_video,
              'use_portrait_orientation' => use_portrait_orientation)
  end
  
  # Starts screen sharing in a joined group call.
  # Returns join response payload for tgcalls.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param audio_source_id [Integer] Screen sharing audio channel synchronization source identifier; received from
  #   tgcalls.
  # @param payload [TD::Types::String] Group call join payload; received from tgcalls.
  # @return [TD::Types::Text]
  def start_group_call_screen_sharing(group_call_id:, audio_source_id:, payload:)
    broadcast('@type'           => 'startGroupCallScreenSharing',
              'group_call_id'   => group_call_id,
              'audio_source_id' => audio_source_id,
              'payload'         => payload)
  end
  
  # Starts a scheduled group call.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @return [TD::Types::Ok]
  def start_scheduled_group_call(group_call_id:)
    broadcast('@type'         => 'startScheduledGroupCall',
              'group_call_id' => group_call_id)
  end
  
  # Stops a poll sent on behalf of a business account; for bots only.
  #
  # @param business_connection_id [TD::Types::String] Unique identifier of business connection on behalf of which the
  #   message with the poll was sent.
  # @param chat_id [Integer] The chat the message belongs to.
  # @param message_id [Integer] Identifier of the message containing the poll.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none.
  # @return [TD::Types::BusinessMessage]
  def stop_business_poll(business_connection_id:, chat_id:, message_id:, reply_markup:)
    broadcast('@type'                  => 'stopBusinessPoll',
              'business_connection_id' => business_connection_id,
              'chat_id'                => chat_id,
              'message_id'             => message_id,
              'reply_markup'           => reply_markup)
  end
  
  # Stops a poll.
  #
  # @param chat_id [Integer] Identifier of the chat to which the poll belongs.
  # @param message_id [Integer] Identifier of the message containing the poll.
  #   Use messageProperties.can_be_edited to check whether the poll can be stopped.
  # @param reply_markup [TD::Types::ReplyMarkup] The new message reply markup; pass null if none; for bots only.
  # @return [TD::Types::Ok]
  def stop_poll(chat_id:, message_id:, reply_markup:)
    broadcast('@type'        => 'stopPoll',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'reply_markup' => reply_markup)
  end
  
  # Suggests a profile photo to another regular user with common messages.
  #
  # @param user_id [Integer] User identifier.
  # @param photo [TD::Types::InputChatPhoto] Profile photo to suggest; {TD::Types::InputChatPhoto::Previous} isn't
  #   supported in this function.
  # @return [TD::Types::Ok]
  def suggest_user_profile_photo(user_id:, photo:)
    broadcast('@type'   => 'suggestUserProfilePhoto',
              'user_id' => user_id,
              'photo'   => photo)
  end
  
  # Fetches the latest versions of all strings from a language pack in the current localization target from the server.
  # This method doesn't need to be called explicitly for the current used/base language packs.
  # Can be called before authorization.
  #
  # @param language_pack_id [TD::Types::String] Language pack identifier.
  # @return [TD::Types::Ok]
  def synchronize_language_pack(language_pack_id:)
    broadcast('@type'            => 'synchronizeLanguagePack',
              'language_pack_id' => language_pack_id)
  end
  
  # Terminates all other sessions of the current user.
  #
  # @return [TD::Types::Ok]
  def terminate_all_other_sessions
    broadcast('@type' => 'terminateAllOtherSessions')
  end
  
  # Terminates a session of the current user.
  #
  # @param session_id [Integer] Session identifier.
  # @return [TD::Types::Ok]
  def terminate_session(session_id:)
    broadcast('@type'      => 'terminateSession',
              'session_id' => session_id)
  end
  
  # Changes pause state of all files in the file download list.
  #
  # @param are_paused [Boolean] Pass true to pause all downloads; pass false to unpause them.
  # @return [TD::Types::Ok]
  def toggle_all_downloads_are_paused(are_paused:)
    broadcast('@type'      => 'toggleAllDownloadsArePaused',
              'are_paused' => are_paused)
  end
  
  # Adds or removes a bot to attachment and side menu.
  # Bot can be added to the menu, only if userTypeBot.can_be_added_to_attachment_menu == true.
  #
  # @param bot_user_id [Integer] Bot's user identifier.
  # @param is_added [Boolean] Pass true to add the bot to attachment menu; pass false to remove the bot from attachment
  #   menu.
  # @param allow_write_access [Boolean] Pass true if the current user allowed the bot to send them messages.
  #   Ignored if is_added is false.
  # @return [TD::Types::Ok]
  def toggle_bot_is_added_to_attachment_menu(bot_user_id:, is_added:, allow_write_access:)
    broadcast('@type'              => 'toggleBotIsAddedToAttachmentMenu',
              'bot_user_id'        => bot_user_id,
              'is_added'           => is_added,
              'allow_write_access' => allow_write_access)
  end
  
  # Changes active state for a username of a bot.
  # The editable username can't be disabled.
  # May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been
  #   reached.
  # Can be called only if userTypeBot.can_be_edited == true.
  #
  # @param bot_user_id [Integer] Identifier of the target bot.
  # @param username [TD::Types::String] The username to change.
  # @param is_active [Boolean] Pass true to activate the username; pass false to disable it.
  # @return [TD::Types::Ok]
  def toggle_bot_username_is_active(bot_user_id:, username:, is_active:)
    broadcast('@type'       => 'toggleBotUsernameIsActive',
              'bot_user_id' => bot_user_id,
              'username'    => username,
              'is_active'   => is_active)
  end
  
  # Pauses or resumes the connected business bot in a specific chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_paused [Boolean] Pass true to pause the connected bot in the chat; pass false to resume the bot.
  # @return [TD::Types::Ok]
  def toggle_business_connected_bot_chat_is_paused(chat_id:, is_paused:)
    broadcast('@type'     => 'toggleBusinessConnectedBotChatIsPaused',
              'chat_id'   => chat_id,
              'is_paused' => is_paused)
  end
  
  # Changes the value of the default disable_notification parameter, used when a message is sent to a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param default_disable_notification [Boolean] New value of default_disable_notification.
  # @return [TD::Types::Ok]
  def toggle_chat_default_disable_notification(chat_id:, default_disable_notification:)
    broadcast('@type'                        => 'toggleChatDefaultDisableNotification',
              'chat_id'                      => chat_id,
              'default_disable_notification' => default_disable_notification)
  end
  
  # Toggles whether chat folder tags are enabled.
  #
  # @param are_tags_enabled [Boolean] Pass true to enable folder tags; pass false to disable them.
  # @return [TD::Types::Ok]
  def toggle_chat_folder_tags(are_tags_enabled:)
    broadcast('@type'            => 'toggleChatFolderTags',
              'are_tags_enabled' => are_tags_enabled)
  end
  
  # Changes the ability of users to save, forward, or copy chat content.
  # Supported only for basic groups, supergroups and channels.
  # Requires owner privileges.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param has_protected_content [Boolean] New value of has_protected_content.
  # @return [TD::Types::Ok]
  def toggle_chat_has_protected_content(chat_id:, has_protected_content:)
    broadcast('@type'                 => 'toggleChatHasProtectedContent',
              'chat_id'               => chat_id,
              'has_protected_content' => has_protected_content)
  end
  
  # Changes the marked as unread state of a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_marked_as_unread [Boolean] New value of is_marked_as_unread.
  # @return [TD::Types::Ok]
  def toggle_chat_is_marked_as_unread(chat_id:, is_marked_as_unread:)
    broadcast('@type'               => 'toggleChatIsMarkedAsUnread',
              'chat_id'             => chat_id,
              'is_marked_as_unread' => is_marked_as_unread)
  end
  
  # Changes the pinned state of a chat.
  # There can be up to getOption("pinned_chat_count_max")/getOption("pinned_archived_chat_count_max") pinned non-secret
  #   chats and the same number of secret chats in the main/archive chat list.
  # The limit can be increased with Telegram Premium.
  #
  # @param chat_list [TD::Types::ChatList] Chat list in which to change the pinned state of the chat.
  # @param chat_id [Integer] Chat identifier.
  # @param is_pinned [Boolean] Pass true to pin the chat; pass false to unpin it.
  # @return [TD::Types::Ok]
  def toggle_chat_is_pinned(chat_list:, chat_id:, is_pinned:)
    broadcast('@type'     => 'toggleChatIsPinned',
              'chat_list' => chat_list,
              'chat_id'   => chat_id,
              'is_pinned' => is_pinned)
  end
  
  # Changes the translatable state of a chat.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param is_translatable [Boolean] New value of is_translatable.
  # @return [TD::Types::Ok]
  def toggle_chat_is_translatable(chat_id:, is_translatable:)
    broadcast('@type'           => 'toggleChatIsTranslatable',
              'chat_id'         => chat_id,
              'is_translatable' => is_translatable)
  end
  
  # Changes the view_as_topics setting of a forum chat or Saved Messages.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param view_as_topics [Boolean] New value of view_as_topics.
  # @return [TD::Types::Ok]
  def toggle_chat_view_as_topics(chat_id:, view_as_topics:)
    broadcast('@type'          => 'toggleChatViewAsTopics',
              'chat_id'        => chat_id,
              'view_as_topics' => view_as_topics)
  end
  
  # Changes pause state of a file in the file download list.
  #
  # @param file_id [Integer] Identifier of the downloaded file.
  # @param is_paused [Boolean] Pass true if the download is paused.
  # @return [TD::Types::Ok]
  def toggle_download_is_paused(file_id:, is_paused:)
    broadcast('@type'     => 'toggleDownloadIsPaused',
              'file_id'   => file_id,
              'is_paused' => is_paused)
  end
  
  # Toggles whether a topic is closed in a forum supergroup chat; requires can_manage_topics right in the supergroup
  #   unless the user is creator of the topic.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @param is_closed [Boolean] Pass true to close the topic; pass false to reopen it.
  # @return [TD::Types::Ok]
  def toggle_forum_topic_is_closed(chat_id:, message_thread_id:, is_closed:)
    broadcast('@type'             => 'toggleForumTopicIsClosed',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id,
              'is_closed'         => is_closed)
  end
  
  # Changes the pinned state of a forum topic; requires can_manage_topics right in the supergroup.
  # There can be up to getOption("pinned_forum_topic_count_max") pinned forum topics.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_thread_id [Integer] Message thread identifier of the forum topic.
  # @param is_pinned [Boolean] Pass true to pin the topic; pass false to unpin it.
  # @return [TD::Types::Ok]
  def toggle_forum_topic_is_pinned(chat_id:, message_thread_id:, is_pinned:)
    broadcast('@type'             => 'toggleForumTopicIsPinned',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id,
              'is_pinned'         => is_pinned)
  end
  
  # Toggles whether a General topic is hidden in a forum supergroup chat; requires can_manage_topics right in the
  #   supergroup.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param is_hidden [Boolean] Pass true to hide and close the General topic; pass false to unhide it.
  # @return [TD::Types::Ok]
  def toggle_general_forum_topic_is_hidden(chat_id:, is_hidden:)
    broadcast('@type'     => 'toggleGeneralForumTopicIsHidden',
              'chat_id'   => chat_id,
              'is_hidden' => is_hidden)
  end
  
  # Toggles whether the current user will receive a notification when the group call starts; scheduled group calls
  #   only.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param enabled_start_notification [Boolean] New value of the enabled_start_notification setting.
  # @return [TD::Types::Ok]
  def toggle_group_call_enabled_start_notification(group_call_id:, enabled_start_notification:)
    broadcast('@type'                      => 'toggleGroupCallEnabledStartNotification',
              'group_call_id'              => group_call_id,
              'enabled_start_notification' => enabled_start_notification)
  end
  
  # Toggles whether current user's video is enabled.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param is_my_video_enabled [Boolean] Pass true if the current user's video is enabled.
  # @return [TD::Types::Ok]
  def toggle_group_call_is_my_video_enabled(group_call_id:, is_my_video_enabled:)
    broadcast('@type'               => 'toggleGroupCallIsMyVideoEnabled',
              'group_call_id'       => group_call_id,
              'is_my_video_enabled' => is_my_video_enabled)
  end
  
  # Toggles whether current user's video is paused.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param is_my_video_paused [Boolean] Pass true if the current user's video is paused.
  # @return [TD::Types::Ok]
  def toggle_group_call_is_my_video_paused(group_call_id:, is_my_video_paused:)
    broadcast('@type'              => 'toggleGroupCallIsMyVideoPaused',
              'group_call_id'      => group_call_id,
              'is_my_video_paused' => is_my_video_paused)
  end
  
  # Toggles whether new participants of a group call can be unmuted only by administrators of the group call.
  # Requires groupCall.can_toggle_mute_new_participants group call flag.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param mute_new_participants [Boolean] New value of the mute_new_participants setting.
  # @return [TD::Types::Ok]
  def toggle_group_call_mute_new_participants(group_call_id:, mute_new_participants:)
    broadcast('@type'                 => 'toggleGroupCallMuteNewParticipants',
              'group_call_id'         => group_call_id,
              'mute_new_participants' => mute_new_participants)
  end
  
  # Toggles whether a group call participant hand is rased.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param participant_id [TD::Types::MessageSender] Participant identifier.
  # @param is_hand_raised [Boolean] Pass true if the user's hand needs to be raised.
  #   Only self hand can be raised.
  #   Requires groupCall.can_be_managed group call flag to lower other's hand.
  # @return [TD::Types::Ok]
  def toggle_group_call_participant_is_hand_raised(group_call_id:, participant_id:, is_hand_raised:)
    broadcast('@type'          => 'toggleGroupCallParticipantIsHandRaised',
              'group_call_id'  => group_call_id,
              'participant_id' => participant_id,
              'is_hand_raised' => is_hand_raised)
  end
  
  # Toggles whether a participant of an active group call is muted, unmuted, or allowed to unmute themselves.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param participant_id [TD::Types::MessageSender] Participant identifier.
  # @param is_muted [Boolean] Pass true to mute the user; pass false to unmute them.
  # @return [TD::Types::Ok]
  def toggle_group_call_participant_is_muted(group_call_id:, participant_id:, is_muted:)
    broadcast('@type'          => 'toggleGroupCallParticipantIsMuted',
              'group_call_id'  => group_call_id,
              'participant_id' => participant_id,
              'is_muted'       => is_muted)
  end
  
  # Pauses or unpauses screen sharing in a joined group call.
  #
  # @param group_call_id [Integer] Group call identifier.
  # @param is_paused [Boolean] Pass true to pause screen sharing; pass false to unpause it.
  # @return [TD::Types::Ok]
  def toggle_group_call_screen_sharing_is_paused(group_call_id:, is_paused:)
    broadcast('@type'         => 'toggleGroupCallScreenSharingIsPaused',
              'group_call_id' => group_call_id,
              'is_paused'     => is_paused)
  end
  
  # Toggles whether the current user has sponsored messages enabled.
  # The setting has no effect for users without Telegram Premium for which sponsored messages are always enabled.
  #
  # @param has_sponsored_messages_enabled [Boolean] Pass true to enable sponsored messages for the current user; false
  #   to disable them.
  # @return [TD::Types::Ok]
  def toggle_has_sponsored_messages_enabled(has_sponsored_messages_enabled:)
    broadcast('@type'                          => 'toggleHasSponsoredMessagesEnabled',
              'has_sponsored_messages_enabled' => has_sponsored_messages_enabled)
  end
  
  # Changes whether the paid message reaction of the user to a message is anonymous.
  # The message must have paid reaction added by the user.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param is_anonymous [Boolean] Pass true to make paid reaction of the user on the message anonymous; pass false to
  #   make the user's profile visible among top reactors.
  # @return [TD::Types::Ok]
  def toggle_paid_message_reaction_is_anonymous(chat_id:, message_id:, is_anonymous:)
    broadcast('@type'        => 'togglePaidMessageReactionIsAnonymous',
              'chat_id'      => chat_id,
              'message_id'   => message_id,
              'is_anonymous' => is_anonymous)
  end
  
  # Changes the pinned state of a Saved Messages topic.
  # There can be up to getOption("pinned_saved_messages_topic_count_max") pinned topics.
  # The limit can be increased with Telegram Premium.
  #
  # @param saved_messages_topic_id [Integer] Identifier of Saved Messages topic to pin or unpin.
  # @param is_pinned [Boolean] Pass true to pin the topic; pass false to unpin it.
  # @return [TD::Types::Ok]
  def toggle_saved_messages_topic_is_pinned(saved_messages_topic_id:, is_pinned:)
    broadcast('@type'                   => 'toggleSavedMessagesTopicIsPinned',
              'saved_messages_topic_id' => saved_messages_topic_id,
              'is_pinned'               => is_pinned)
  end
  
  # Toggles whether a session can accept incoming calls.
  #
  # @param session_id [Integer] Session identifier.
  # @param can_accept_calls [Boolean] Pass true to allow accepting incoming calls by the session; pass false otherwise.
  # @return [TD::Types::Ok]
  def toggle_session_can_accept_calls(session_id:, can_accept_calls:)
    broadcast('@type'            => 'toggleSessionCanAcceptCalls',
              'session_id'       => session_id,
              'can_accept_calls' => can_accept_calls)
  end
  
  # Toggles whether a session can accept incoming secret chats.
  #
  # @param session_id [Integer] Session identifier.
  # @param can_accept_secret_chats [Boolean] Pass true to allow accepting secret chats by the session; pass false
  #   otherwise.
  # @return [TD::Types::Ok]
  def toggle_session_can_accept_secret_chats(session_id:, can_accept_secret_chats:)
    broadcast('@type'                   => 'toggleSessionCanAcceptSecretChats',
              'session_id'              => session_id,
              'can_accept_secret_chats' => can_accept_secret_chats)
  end
  
  # Toggles whether a story is accessible after expiration.
  # Can be called only if story.can_toggle_is_posted_to_chat_page == true.
  #
  # @param story_sender_chat_id [Integer] Identifier of the chat that posted the story.
  # @param story_id [Integer] Identifier of the story.
  # @param is_posted_to_chat_page [Boolean] Pass true to make the story accessible after expiration; pass false to make
  #   it private.
  # @return [TD::Types::Ok]
  def toggle_story_is_posted_to_chat_page(story_sender_chat_id:, story_id:, is_posted_to_chat_page:)
    broadcast('@type'                  => 'toggleStoryIsPostedToChatPage',
              'story_sender_chat_id'   => story_sender_chat_id,
              'story_id'               => story_id,
              'is_posted_to_chat_page' => is_posted_to_chat_page)
  end
  
  # Toggles whether sponsored messages are shown in the channel chat; requires owner privileges in the channel.
  # The chat must have at least chatBoostFeatures.min_sponsored_message_disable_boost_level boost level to disable
  #   sponsored messages.
  #
  # @param supergroup_id [Integer] The identifier of the channel.
  # @param can_have_sponsored_messages [Boolean] The new value of can_have_sponsored_messages.
  # @return [TD::Types::Ok]
  def toggle_supergroup_can_have_sponsored_messages(supergroup_id:, can_have_sponsored_messages:)
    broadcast('@type'                       => 'toggleSupergroupCanHaveSponsoredMessages',
              'supergroup_id'               => supergroup_id,
              'can_have_sponsored_messages' => can_have_sponsored_messages)
  end
  
  # Toggles whether aggressive anti-spam checks are enabled in the supergroup.
  # Can be called only if supergroupFullInfo.can_toggle_aggressive_anti_spam == true.
  #
  # @param supergroup_id [Integer] The identifier of the supergroup, which isn't a broadcast group.
  # @param has_aggressive_anti_spam_enabled [Boolean] The new value of has_aggressive_anti_spam_enabled.
  # @return [TD::Types::Ok]
  def toggle_supergroup_has_aggressive_anti_spam_enabled(supergroup_id:, has_aggressive_anti_spam_enabled:)
    broadcast('@type'                            => 'toggleSupergroupHasAggressiveAntiSpamEnabled',
              'supergroup_id'                    => supergroup_id,
              'has_aggressive_anti_spam_enabled' => has_aggressive_anti_spam_enabled)
  end
  
  # Toggles whether non-administrators can receive only administrators and bots using getSupergroupMembers or
  #   searchChatMembers.
  # Can be called only if supergroupFullInfo.can_hide_members == true.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param has_hidden_members [Boolean] New value of has_hidden_members.
  # @return [TD::Types::Ok]
  def toggle_supergroup_has_hidden_members(supergroup_id:, has_hidden_members:)
    broadcast('@type'              => 'toggleSupergroupHasHiddenMembers',
              'supergroup_id'      => supergroup_id,
              'has_hidden_members' => has_hidden_members)
  end
  
  # Toggles whether the message history of a supergroup is available to new members; requires can_change_info member
  #   right.
  #
  # @param supergroup_id [Integer] The identifier of the supergroup.
  # @param is_all_history_available [Boolean] The new value of is_all_history_available.
  # @return [TD::Types::Ok]
  def toggle_supergroup_is_all_history_available(supergroup_id:, is_all_history_available:)
    broadcast('@type'                    => 'toggleSupergroupIsAllHistoryAvailable',
              'supergroup_id'            => supergroup_id,
              'is_all_history_available' => is_all_history_available)
  end
  
  # Upgrades supergroup to a broadcast group; requires owner privileges in the supergroup.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @return [TD::Types::Ok]
  def toggle_supergroup_is_broadcast_group(supergroup_id:)
    broadcast('@type'         => 'toggleSupergroupIsBroadcastGroup',
              'supergroup_id' => supergroup_id)
  end
  
  # Toggles whether the supergroup is a forum; requires owner privileges in the supergroup.
  # Discussion supergroups can't be converted to forums.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup.
  # @param is_forum [Boolean] New value of is_forum.
  # @return [TD::Types::Ok]
  def toggle_supergroup_is_forum(supergroup_id:, is_forum:)
    broadcast('@type'         => 'toggleSupergroupIsForum',
              'supergroup_id' => supergroup_id,
              'is_forum'      => is_forum)
  end
  
  # Toggles whether all users directly joining the supergroup need to be approved by supergroup administrators;
  #   requires can_restrict_members administrator right.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup that isn't a broadcast group.
  # @param join_by_request [Boolean] New value of join_by_request.
  # @return [TD::Types::Ok]
  def toggle_supergroup_join_by_request(supergroup_id:, join_by_request:)
    broadcast('@type'           => 'toggleSupergroupJoinByRequest',
              'supergroup_id'   => supergroup_id,
              'join_by_request' => join_by_request)
  end
  
  # Toggles whether joining is mandatory to send messages to a discussion supergroup; requires can_restrict_members
  #   administrator right.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup that isn't a broadcast group.
  # @param join_to_send_messages [Boolean] New value of join_to_send_messages.
  # @return [TD::Types::Ok]
  def toggle_supergroup_join_to_send_messages(supergroup_id:, join_to_send_messages:)
    broadcast('@type'                 => 'toggleSupergroupJoinToSendMessages',
              'supergroup_id'         => supergroup_id,
              'join_to_send_messages' => join_to_send_messages)
  end
  
  # Toggles whether sender signature or link to the account is added to sent messages in a channel; requires
  #   can_change_info member right.
  #
  # @param supergroup_id [Integer] Identifier of the channel.
  # @param sign_messages [Boolean] New value of sign_messages.
  # @param show_message_sender [Boolean] New value of show_message_sender.
  # @return [TD::Types::Ok]
  def toggle_supergroup_sign_messages(supergroup_id:, sign_messages:, show_message_sender:)
    broadcast('@type'               => 'toggleSupergroupSignMessages',
              'supergroup_id'       => supergroup_id,
              'sign_messages'       => sign_messages,
              'show_message_sender' => show_message_sender)
  end
  
  # Changes active state for a username of a supergroup or channel, requires owner privileges in the supergroup or
  #   channel.
  # The editable username can't be disabled.
  # May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been
  #   reached.
  #
  # @param supergroup_id [Integer] Identifier of the supergroup or channel.
  # @param username [TD::Types::String] The username to change.
  # @param is_active [Boolean] Pass true to activate the username; pass false to disable it.
  # @return [TD::Types::Ok]
  def toggle_supergroup_username_is_active(supergroup_id:, username:, is_active:)
    broadcast('@type'         => 'toggleSupergroupUsernameIsActive',
              'supergroup_id' => supergroup_id,
              'username'      => username,
              'is_active'     => is_active)
  end
  
  # Changes active state for a username of the current user.
  # The editable username can't be disabled.
  # May return an error with a message "USERNAMES_ACTIVE_TOO_MUCH" if the maximum number of active usernames has been
  #   reached.
  #
  # @param username [TD::Types::String] The username to change.
  # @param is_active [Boolean] Pass true to activate the username; pass false to disable it.
  # @return [TD::Types::Ok]
  def toggle_username_is_active(username:, is_active:)
    broadcast('@type'     => 'toggleUsernameIsActive',
              'username'  => username,
              'is_active' => is_active)
  end
  
  # Changes the owner of a chat; requires owner privileges in the chat.
  # Use the method canTransferOwnership to check whether the ownership can be transferred from the current session.
  # Available only for supergroups and channel chats.
  #
  # @param chat_id [Integer] Chat identifier.
  # @param user_id [Integer] Identifier of the user to which transfer the ownership.
  #   The ownership can't be transferred to a bot or to a deleted user.
  # @param password [TD::Types::String] The 2-step verification password of the current user.
  # @return [TD::Types::Ok]
  def transfer_chat_ownership(chat_id:, user_id:, password:)
    broadcast('@type'    => 'transferChatOwnership',
              'chat_id'  => chat_id,
              'user_id'  => user_id,
              'password' => password)
  end
  
  # Extracts text or caption of the given message and translates it to the given language.
  # If the current user is a Telegram Premium user, then text formatting is preserved.
  #
  # @param chat_id [Integer] Identifier of the chat to which the message belongs.
  # @param message_id [Integer] Identifier of the message.
  # @param to_language_code [TD::Types::String] Language code of the language to which the message is translated.
  #   Must be one of "af", "sq", "am", "ar", "hy", "az", "eu", "be", "bn", "bs", "bg", "ca", "ceb", "zh-CN", "zh",
  #   "zh-Hans", "zh-TW", "zh-Hant", "co", "hr", "cs", "da", "nl", "en", "eo", "et", "fi", "fr", "fy", "gl", "ka", "de",
  #   "el", "gu", "ht", "ha", "haw", "he", "iw", "hi", "hmn", "hu", "is", "ig", "id", "in", "ga", "it", "ja", "jv", "kn",
  #   "kk", "km", "rw", "ko", "ku", "ky", "lo", "la", "lv", "lt", "lb", "mk", "mg", "ms", "ml", "mt", "mi", "mr", "mn", "my",
  #   "ne", "no", "ny", "or", "ps", "fa", "pl", "pt", "pa", "ro", "ru", "sm", "gd", "sr", "st", "sn", "sd", "si", "sk", "sl",
  #   "so", "es", "su", "sw", "sv", "tl", "tg", "ta", "tt", "te", "th", "tr", "tk", "uk", "ur", "ug", "uz", "vi", "cy", "xh",
  #   "yi", "ji", "yo", "zu".
  # @return [TD::Types::FormattedText]
  def translate_message_text(chat_id:, message_id:, to_language_code:)
    broadcast('@type'            => 'translateMessageText',
              'chat_id'          => chat_id,
              'message_id'       => message_id,
              'to_language_code' => to_language_code)
  end
  
  # Translates a text to the given language.
  # If the current user is a Telegram Premium user, then text formatting is preserved.
  #
  # @param text [TD::Types::FormattedText] Text to translate.
  # @param to_language_code [TD::Types::String] Language code of the language to which the message is translated.
  #   Must be one of "af", "sq", "am", "ar", "hy", "az", "eu", "be", "bn", "bs", "bg", "ca", "ceb", "zh-CN", "zh",
  #   "zh-Hans", "zh-TW", "zh-Hant", "co", "hr", "cs", "da", "nl", "en", "eo", "et", "fi", "fr", "fy", "gl", "ka", "de",
  #   "el", "gu", "ht", "ha", "haw", "he", "iw", "hi", "hmn", "hu", "is", "ig", "id", "in", "ga", "it", "ja", "jv", "kn",
  #   "kk", "km", "rw", "ko", "ku", "ky", "lo", "la", "lv", "lt", "lb", "mk", "mg", "ms", "ml", "mt", "mi", "mr", "mn", "my",
  #   "ne", "no", "ny", "or", "ps", "fa", "pl", "pt", "pa", "ro", "ru", "sm", "gd", "sr", "st", "sn", "sd", "si", "sk", "sl",
  #   "so", "es", "su", "sw", "sv", "tl", "tg", "ta", "tt", "te", "th", "tr", "tk", "uk", "ur", "ug", "uz", "vi", "cy", "xh",
  #   "yi", "ji", "yo", "zu".
  # @return [TD::Types::FormattedText]
  def translate_text(text:, to_language_code:)
    broadcast('@type'            => 'translateText',
              'text'             => text,
              'to_language_code' => to_language_code)
  end
  
  # Removes all pinned messages from a chat; requires can_pin_messages member right if the chat is a basic group or
  #   supergroup, or can_edit_messages administrator right if the chat is a channel.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @return [TD::Types::Ok]
  def unpin_all_chat_messages(chat_id:)
    broadcast('@type'   => 'unpinAllChatMessages',
              'chat_id' => chat_id)
  end
  
  # Removes all pinned messages from a forum topic; requires can_pin_messages member right in the supergroup.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_thread_id [Integer] Message thread identifier in which messages will be unpinned.
  # @return [TD::Types::Ok]
  def unpin_all_message_thread_messages(chat_id:, message_thread_id:)
    broadcast('@type'             => 'unpinAllMessageThreadMessages',
              'chat_id'           => chat_id,
              'message_thread_id' => message_thread_id)
  end
  
  # Removes a pinned message from a chat; requires can_pin_messages member right if the chat is a basic group or
  #   supergroup, or can_edit_messages administrator right if the chat is a channel.
  #
  # @param chat_id [Integer] Identifier of the chat.
  # @param message_id [Integer] Identifier of the removed pinned message.
  # @return [TD::Types::Ok]
  def unpin_chat_message(chat_id:, message_id:)
    broadcast('@type'      => 'unpinChatMessage',
              'chat_id'    => chat_id,
              'message_id' => message_id)
  end
  
  # Creates a new supergroup from an existing basic group and sends a corresponding messageChatUpgradeTo and
  #   messageChatUpgradeFrom; requires owner privileges.
  # Deactivates the original basic group.
  #
  # @param chat_id [Integer] Identifier of the chat to upgrade.
  # @return [TD::Types::Chat]
  def upgrade_basic_group_chat_to_supergroup_chat(chat_id:)
    broadcast('@type'   => 'upgradeBasicGroupChatToSupergroupChat',
              'chat_id' => chat_id)
  end
  
  # Uploads a file with a sticker; returns the uploaded file.
  #
  # @param user_id [Integer] Sticker file owner; ignored for regular users.
  # @param sticker_format [TD::Types::StickerFormat] Sticker format.
  # @param sticker [TD::Types::InputFile] File file to upload; must fit in a 512x512 square.
  #   For WEBP stickers the file must be in WEBP or PNG format, which will be converted to WEBP server-side.
  #   See https://core.telegram.org/animated_stickers#technical-requirements for technical requirements.
  # @return [TD::Types::File]
  def upload_sticker_file(user_id:, sticker_format:, sticker:)
    broadcast('@type'          => 'uploadStickerFile',
              'user_id'        => user_id,
              'sticker_format' => sticker_format,
              'sticker'        => sticker)
  end
  
  # Validates the order information provided by a user and returns the available shipping options for a flexible
  #   invoice.
  #
  # @param input_invoice [TD::Types::InputInvoice] The invoice.
  # @param order_info [TD::Types::OrderInfo, nil] The order information, provided by the user; pass null if empty.
  # @param allow_save [Boolean] Pass true to save the order information.
  # @return [TD::Types::ValidatedOrderInfo]
  def validate_order_info(input_invoice:, order_info: nil, allow_save:)
    broadcast('@type'         => 'validateOrderInfo',
              'input_invoice' => input_invoice,
              'order_info'    => order_info,
              'allow_save'    => allow_save)
  end
  
  # Informs TDLib that messages are being viewed by the user.
  # Sponsored messages must be marked as viewed only when the entire text of the message is shown on the screen
  #   (excluding the button).
  # Many useful activities depend on whether the messages are currently being viewed or not (e.g., marking messages as
  #   read, incrementing a view counter, updating a view counter, removing deleted messages in supergroups and channels).
  #
  # @param chat_id [Integer] Chat identifier.
  # @param message_ids [Array<Integer>] The identifiers of the messages being viewed.
  # @param source [TD::Types::MessageSource] Source of the message view; pass null to guess the source based on chat
  #   open state.
  # @param force_read [Boolean] Pass true to mark as read the specified messages even the chat is closed.
  # @return [TD::Types::Ok]
  def view_messages(chat_id:, message_ids:, source:, force_read:)
    broadcast('@type'       => 'viewMessages',
              'chat_id'     => chat_id,
              'message_ids' => message_ids,
              'source'      => source,
              'force_read'  => force_read)
  end
  
  # Informs TDLib that the user viewed detailed information about a Premium feature on the Premium features screen.
  #
  # @param feature [TD::Types::PremiumFeature] The viewed premium feature.
  # @return [TD::Types::Ok]
  def view_premium_feature(feature:)
    broadcast('@type'   => 'viewPremiumFeature',
              'feature' => feature)
  end
  
  # Informs the server that some trending sticker sets have been viewed by the user.
  #
  # @param sticker_set_ids [Array<Integer>] Identifiers of viewed trending sticker sets.
  # @return [TD::Types::Ok]
  def view_trending_sticker_sets(sticker_set_ids:)
    broadcast('@type'           => 'viewTrendingStickerSets',
              'sticker_set_ids' => sticker_set_ids)
  end
  
  # Writes a part of a generated file.
  # This method is intended to be used only if the application has no direct access to TDLib's file system, because it
  #   is usually slower than a direct write to the destination file.
  #
  # @param generation_id [Integer] The identifier of the generation process.
  # @param offset [Integer] The offset from which to write the data to the file.
  # @param data [String] The data to write.
  # @return [TD::Types::Ok]
  def write_generated_file_part(generation_id:, offset:, data:)
    broadcast('@type'         => 'writeGeneratedFilePart',
              'generation_id' => generation_id,
              'offset'        => offset,
              'data'          => data)
  end
end
