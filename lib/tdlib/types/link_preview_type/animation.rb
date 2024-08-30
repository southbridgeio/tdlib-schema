module TD::Types
  # The link is a link to an animation.
  #
  # @attr animation [TD::Types::Animation] The animation.
  # @attr author [TD::Types::String] Author of the animation.
  class LinkPreviewType::Animation < LinkPreviewType
    attribute :animation, TD::Types::Animation
    attribute :author, TD::Types::String
  end
end
