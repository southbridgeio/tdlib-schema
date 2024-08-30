module TD::Types
  # Contains an HTTPS link to boost a chat.
  #
  # @attr link [TD::Types::String] The link.
  # @attr is_public [Boolean] True, if the link will work for non-members of the chat.
  class ChatBoostLink < Base
    attribute :link, TD::Types::String
    attribute :is_public, TD::Types::Bool
  end
end
