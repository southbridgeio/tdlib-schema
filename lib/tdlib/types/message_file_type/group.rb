module TD::Types
  # The messages was exported from a group chat.
  #
  # @attr title [String, nil] Title of the group chat; may be empty if unrecognized.
  class MessageFileType::Group < MessageFileType
    attribute :title, TD::Types::String.optional.default(nil)
  end
end
