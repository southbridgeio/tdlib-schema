module TD::Types
  # The list of contacts that had birthdays recently or will have birthday soon has changed.
  #
  # @attr close_birthday_users [Array<TD::Types::CloseBirthdayUser>] List of contact users with close birthday.
  class Update::ContactCloseBirthdays < Update
    attribute :close_birthday_users, TD::Types::Array.of(TD::Types::CloseBirthdayUser)
  end
end
