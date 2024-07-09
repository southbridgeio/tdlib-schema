module TD::Types
  # Contains information about a bot.
  #
  # @attr short_description [TD::Types::String] The text that is shown on the bot's profile page and is sent together
  #   with the link when users share the bot.
  # @attr description [TD::Types::String] The text shown in the chat with the bot if the chat is empty.
  # @attr photo [TD::Types::Photo, nil] Photo shown in the chat with the bot if the chat is empty; may be null.
  # @attr animation [TD::Types::Animation, nil] Animation shown in the chat with the bot if the chat is empty; may be
  #   null.
  # @attr menu_button [TD::Types::BotMenuButton, nil] Information about a button to show instead of the bot commands
  #   menu button; may be null if ordinary bot commands menu must be shown.
  # @attr commands [Array<TD::Types::BotCommand>] List of the bot commands.
  # @attr default_group_administrator_rights [TD::Types::ChatAdministratorRights, nil] Default administrator rights for
  #   adding the bot to basic group and supergroup chats; may be null.
  # @attr default_channel_administrator_rights [TD::Types::ChatAdministratorRights, nil] Default administrator rights
  #   for adding the bot to channels; may be null.
  # @attr edit_commands_link [TD::Types::InternalLinkType, nil] The internal link, which can be used to edit bot
  #   commands; may be null.
  # @attr edit_description_link [TD::Types::InternalLinkType, nil] The internal link, which can be used to edit bot
  #   description; may be null.
  # @attr edit_description_media_link [TD::Types::InternalLinkType, nil] The internal link, which can be used to edit
  #   the photo or animation shown in the chat with the bot if the chat is empty; may be null.
  # @attr edit_settings_link [TD::Types::InternalLinkType, nil] The internal link, which can be used to edit bot
  #   settings; may be null.
  class BotInfo < Base
    attribute :short_description, TD::Types::String
    attribute :description, TD::Types::String
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :animation, TD::Types::Animation.optional.default(nil)
    attribute :menu_button, TD::Types::BotMenuButton.optional.default(nil)
    attribute :commands, TD::Types::Array.of(TD::Types::BotCommand)
    attribute :default_group_administrator_rights, TD::Types::ChatAdministratorRights.optional.default(nil)
    attribute :default_channel_administrator_rights, TD::Types::ChatAdministratorRights.optional.default(nil)
    attribute :edit_commands_link, TD::Types::InternalLinkType.optional.default(nil)
    attribute :edit_description_link, TD::Types::InternalLinkType.optional.default(nil)
    attribute :edit_description_media_link, TD::Types::InternalLinkType.optional.default(nil)
    attribute :edit_settings_link, TD::Types::InternalLinkType.optional.default(nil)
  end
end
