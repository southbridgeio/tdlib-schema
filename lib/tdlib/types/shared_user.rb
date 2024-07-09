module TD::Types
  # Contains information about a user shared with a bot.
  #
  # @attr user_id [Integer] User identifier.
  # @attr first_name [TD::Types::String] First name of the user; for bots only.
  # @attr last_name [TD::Types::String] Last name of the user; for bots only.
  # @attr username [TD::Types::String] Username of the user; for bots only.
  # @attr photo [TD::Types::Photo, nil] Profile photo of the user; for bots only; may be null.
  class SharedUser < Base
    attribute :user_id, TD::Types::Coercible::Integer
    attribute :first_name, TD::Types::String
    attribute :last_name, TD::Types::String
    attribute :username, TD::Types::String
    attribute :photo, TD::Types::Photo.optional.default(nil)
  end
end
