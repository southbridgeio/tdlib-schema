module TD::Types
  # Describes a public forward or repost of a story.
  class PublicForward < Base
    %w[
      message
      story
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/public_forward/#{type}"
    end
  end
end
