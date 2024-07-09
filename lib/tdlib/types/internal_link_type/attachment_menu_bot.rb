module TD::Types
  # The link is a link to an attachment menu bot to be opened in the specified or a chosen chat.
  # Process given target_chat to open the chat.
  # Then, call searchPublicChat with the given bot username, check that the user is a bot and can be added to
  #   attachment menu.
  # Then, use getAttachmentMenuBot to receive information about the bot.
  # If the bot isn't added to attachment menu, then show a disclaimer about Mini Apps being a third-party apps, ask the
  #   user to accept their Terms of service and confirm adding the bot to side and attachment menu.
  # If the user accept the terms and confirms adding, then use toggleBotIsAddedToAttachmentMenu to add the bot.
  # If the attachment menu bot can't be used in the opened chat, show an error to the user.
  # If the bot is added to attachment menu and can be used in the chat, then use openWebApp with the given URL.
  #
  # @attr target_chat [TD::Types::TargetChat] Target chat to be opened.
  # @attr bot_username [TD::Types::String] Username of the bot.
  # @attr url [TD::Types::String] URL to be passed to openWebApp.
  class InternalLinkType::AttachmentMenuBot < InternalLinkType
    attribute :target_chat, TD::Types::TargetChat
    attribute :bot_username, TD::Types::String
    attribute :url, TD::Types::String
  end
end
