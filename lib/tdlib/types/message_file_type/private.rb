module TD::Types
  # The messages was exported from a private chat.
  #
  # @attr name [String, nil] Name of the other party; may be empty if unrecognized.
  class MessageFileType::Private < MessageFileType
    attribute :name, TD::Types::String.optional.default(nil)
  end
end
