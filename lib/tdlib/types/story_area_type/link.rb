module TD::Types
  # An area pointing to a HTTP or tg:// link.
  #
  # @attr url [TD::Types::String] HTTP or tg:// URL to be opened when the area is clicked.
  class StoryAreaType::Link < StoryAreaType
    attribute :url, TD::Types::String
  end
end
