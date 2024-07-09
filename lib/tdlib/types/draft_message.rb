module TD::Types
  # Contains information about a message draft.
  #
  # @attr reply_to [TD::Types::InputMessageReplyTo, nil] Information about the message to be replied; must be of the
  #   type inputMessageReplyToMessage; may be null if none.
  # @attr date [Integer] Point in time (Unix timestamp) when the draft was created.
  # @attr input_message_text [TD::Types::InputMessageContent] Content of the message draft; must be of the type
  #   inputMessageText, inputMessageVideoNote, or inputMessageVoiceNote.
  # @attr effect_id [Integer] Identifier of the effect to apply to the message when it is sent; 0 if none.
  class DraftMessage < Base
    attribute :reply_to, TD::Types::InputMessageReplyTo.optional.default(nil)
    attribute :date, TD::Types::Coercible::Integer
    attribute :input_message_text, TD::Types::InputMessageContent
    attribute :effect_id, TD::Types::Coercible::Integer
  end
end
