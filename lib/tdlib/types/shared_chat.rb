module TD::Types
  # Contains information about a chat shared with a bot.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr title [TD::Types::String] Title of the chat; for bots only.
  # @attr username [TD::Types::String] Username of the chat; for bots only.
  # @attr photo [TD::Types::Photo, nil] Photo of the chat; for bots only; may be null.
  class SharedChat < Base
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :title, TD::Types::String
    attribute :username, TD::Types::String
    attribute :photo, TD::Types::Photo.optional.default(nil)
  end
end
