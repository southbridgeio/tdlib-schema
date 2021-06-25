module TD::Types
  # The parameters of animation search through GetOption("animation_search_bot_username") bot has changed.
  #
  # @attr provider [String] Name of the animation search provider.
  # @attr emojis [Array<String>] The new list of emojis suggested for searching.
  class Update::AnimationSearchParameters < Update
    attribute :provider, TD::Types::String
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
