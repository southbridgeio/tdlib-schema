module TD::Types
  # The parameters of animation search through getOption("animation_search_bot_username") bot has changed.
  #
  # @attr provider [TD::Types::String] Name of the animation search provider.
  # @attr emojis [Array<TD::Types::String>] The new list of emojis suggested for searching.
  class Update::AnimationSearchParameters < Update
    attribute :provider, TD::Types::String
    attribute :emojis, TD::Types::Array.of(TD::Types::String)
  end
end
