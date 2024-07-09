module TD::Types
  # Instructs application to force a reply to this message.
  #
  # @attr is_personal [Boolean] True, if a forced reply must automatically be shown to the current user.
  #   For outgoing messages, specify true to show the forced reply only for the mentioned users and for the target user
  #   of a reply.
  # @attr input_field_placeholder [TD::Types::String] If non-empty, the placeholder to be shown in the input field when
  #   the reply is active; 0-64 characters.
  class ReplyMarkup::ForceReply < ReplyMarkup
    attribute :is_personal, TD::Types::Bool
    attribute :input_field_placeholder, TD::Types::String
  end
end
