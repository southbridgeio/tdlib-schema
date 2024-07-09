module TD::Types
  # A bot (see https://core.telegram.org/bots).
  #
  # @attr can_be_edited [Boolean] True, if the bot is owned by the current user and can be edited using the methods
  #   toggleBotUsernameIsActive, reorderBotActiveUsernames, setBotProfilePhoto, setBotName, setBotInfoDescription, and
  #   setBotInfoShortDescription.
  # @attr can_join_groups [Boolean] True, if the bot can be invited to basic group and supergroup chats.
  # @attr can_read_all_group_messages [Boolean] True, if the bot can read all messages in basic group or supergroup
  #   chats and not just those addressed to the bot.
  #   In private and channel chats a bot can always read all messages.
  # @attr is_inline [Boolean] True, if the bot supports inline queries.
  # @attr inline_query_placeholder [TD::Types::String] Placeholder for inline queries (displayed on the application
  #   input field).
  # @attr need_location [Boolean] True, if the location of the user is expected to be sent with every inline query to
  #   this bot.
  # @attr can_connect_to_business [Boolean] True, if the bot supports connection to Telegram Business accounts.
  # @attr can_be_added_to_attachment_menu [Boolean] True, if the bot can be added to attachment or side menu.
  class UserType::Bot < UserType
    attribute :can_be_edited, TD::Types::Bool
    attribute :can_join_groups, TD::Types::Bool
    attribute :can_read_all_group_messages, TD::Types::Bool
    attribute :is_inline, TD::Types::Bool
    attribute :inline_query_placeholder, TD::Types::String
    attribute :need_location, TD::Types::Bool
    attribute :can_connect_to_business, TD::Types::Bool
    attribute :can_be_added_to_attachment_menu, TD::Types::Bool
  end
end
