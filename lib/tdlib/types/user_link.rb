module TD::Types
  # Contains an HTTPS URL, which can be used to get information about a user.
  #
  # @attr url [TD::Types::String] The URL.
  # @attr expires_in [Integer] Left time for which the link is valid, in seconds; 0 if the link is a public username
  #   link.
  class UserLink < Base
    attribute :url, TD::Types::String
    attribute :expires_in, TD::Types::Coercible::Integer
  end
end
