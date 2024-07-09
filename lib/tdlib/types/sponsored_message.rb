module TD::Types
  # Describes a sponsored message.
  #
  # @attr message_id [Integer] Message identifier; unique for the chat to which the sponsored message belongs among
  #   both ordinary and sponsored messages.
  # @attr is_recommended [Boolean] True, if the message needs to be labeled as "recommended" instead of "sponsored".
  # @attr can_be_reported [Boolean] True, if the message can be reported to Telegram moderators through
  #   reportChatSponsoredMessage.
  # @attr content [TD::Types::MessageContent] Content of the message.
  #   Currently, can be only of the type messageText.
  # @attr sponsor [TD::Types::MessageSponsor] Information about the sponsor of the message.
  # @attr title [TD::Types::String] Title of the sponsored message.
  # @attr button_text [TD::Types::String] Text for the message action button.
  # @attr accent_color_id [Integer] Identifier of the accent color for title, button text and message background.
  # @attr background_custom_emoji_id [Integer] Identifier of a custom emoji to be shown on the message background; 0 if
  #   none.
  # @attr additional_info [TD::Types::String] If non-empty, additional information about the sponsored message to be
  #   shown along with the message.
  class SponsoredMessage < Base
    attribute :message_id, TD::Types::Coercible::Integer
    attribute :is_recommended, TD::Types::Bool
    attribute :can_be_reported, TD::Types::Bool
    attribute :content, TD::Types::MessageContent
    attribute :sponsor, TD::Types::MessageSponsor
    attribute :title, TD::Types::String
    attribute :button_text, TD::Types::String
    attribute :accent_color_id, TD::Types::Coercible::Integer
    attribute :background_custom_emoji_id, TD::Types::Coercible::Integer
    attribute :additional_info, TD::Types::String
  end
end
