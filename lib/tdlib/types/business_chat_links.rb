module TD::Types
  # Contains a list of business chat links created by the user.
  #
  # @attr links [Array<TD::Types::BusinessChatLink>] List of links.
  class BusinessChatLinks < Base
    attribute :links, TD::Types::Array.of(TD::Types::BusinessChatLink)
  end
end
