module TD::Types
  # Contains information about a message draft.
  #
  # @attr reply_to_message_id [Integer] Identifier of the message to reply to; 0 if none.
  # @attr date [Integer] Point in time (Unix timestamp) when the draft was created.
  # @attr input_message_text [TD::Types::InputMessageContent] Content of the message draft; must be of the type
  #   inputMessageText.
  class DraftMessage < Base
    attribute :reply_to_message_id, TD::Types::Coercible::Integer
    attribute :date, TD::Types::Coercible::Integer
    attribute :input_message_text, TD::Types::InputMessageContent
  end
end
