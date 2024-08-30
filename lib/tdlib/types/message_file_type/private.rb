module TD::Types
  # The messages were exported from a private chat.
  #
  # @attr name [TD::Types::String, nil] Name of the other party; may be empty if unrecognized.
  class MessageFileType::Private < MessageFileType
    attribute :name, TD::Types::String.optional.default(nil)
  end
end
