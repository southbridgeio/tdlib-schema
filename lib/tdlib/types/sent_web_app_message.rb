module TD::Types
  # Information about the message sent by answerWebAppQuery.
  #
  # @attr inline_message_id [TD::Types::String] Identifier of the sent inline message, if known.
  class SentWebAppMessage < Base
    attribute :inline_message_id, TD::Types::String
  end
end
