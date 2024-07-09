module TD::Types
  # The link is a link to a user by a temporary token.
  # Call searchUserByToken with the given token to process the link.
  # If the user is found, then call createPrivateChat and open the chat.
  #
  # @attr token [TD::Types::String] The token.
  class InternalLinkType::UserToken < InternalLinkType
    attribute :token, TD::Types::String
  end
end
