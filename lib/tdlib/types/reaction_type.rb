module TD::Types
  # Describes type of message reaction.
  class ReactionType < Base
    %w[
      emoji
      custom_emoji
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/reaction_type/#{type}"
    end
  end
end
