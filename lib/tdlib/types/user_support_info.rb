module TD::Types
  # Contains custom information about the user.
  #
  # @attr message [TD::Types::FormattedText] Information message.
  # @attr author [TD::Types::String] Information author.
  # @attr date [Integer] Information change date.
  class UserSupportInfo < Base
    attribute :message, TD::Types::FormattedText
    attribute :author, TD::Types::String
    attribute :date, TD::Types::Coercible::Integer
  end
end
