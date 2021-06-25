module TD::Types
  # A new incoming inline query; for bots only.
  #
  # @attr id [Integer] Unique query identifier.
  # @attr sender_user_id [Integer] Identifier of the user who sent the query.
  # @attr user_location [TD::Types::Location, nil] User location; may be null.
  # @attr chat_type [TD::Types::ChatType, nil] Contains information about the type of the chat, from which the query
  #   originated; may be null if unknown.
  # @attr query [String] Text of the query.
  # @attr offset [String] Offset of the first entry to return.
  class Update::NewInlineQuery < Update
    attribute :id, TD::Types::Integer
    attribute :sender_user_id, TD::Types::Integer
    attribute :user_location, TD::Types::Location.optional.default(nil)
    attribute :chat_type, TD::Types::ChatType.optional.default(nil)
    attribute :query, TD::Types::String
    attribute :offset, TD::Types::String
  end
end
