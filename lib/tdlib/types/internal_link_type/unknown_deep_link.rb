module TD::Types
  # The link is an unknown tg: link.
  # Call getDeepLinkInfo to process the link.
  #
  # @attr link [TD::Types::String] Link to be passed to getDeepLinkInfo.
  class InternalLinkType::UnknownDeepLink < InternalLinkType
    attribute :link, TD::Types::String
  end
end
