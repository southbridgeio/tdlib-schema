module TD::Types
  # The link is a link to a business chat.
  # Use getBusinessChatLinkInfo with the provided link name to get information about the link, then open received
  #   private chat and replace chat draft with the provided text.
  #
  # @attr link_name [TD::Types::String] Name of the link.
  class InternalLinkType::BusinessChat < InternalLinkType
    attribute :link_name, TD::Types::String
  end
end
