module TD::Types
  # Contains an HTTPS link to a message in a supergroup or channel, or a forum topic.
  #
  # @attr link [TD::Types::String] The link.
  # @attr is_public [Boolean] True, if the link will work for non-members of the chat.
  class MessageLink < Base
    attribute :link, TD::Types::String
    attribute :is_public, TD::Types::Bool
  end
end
