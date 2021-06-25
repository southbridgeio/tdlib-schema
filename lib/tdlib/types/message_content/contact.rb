module TD::Types
  # A message with a user contact.
  #
  # @attr contact [TD::Types::Contact] The contact description.
  class MessageContent::Contact < MessageContent
    attribute :contact, TD::Types::Contact
  end
end
