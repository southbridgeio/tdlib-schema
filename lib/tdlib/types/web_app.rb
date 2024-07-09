module TD::Types
  # Describes a Web App.
  # Use getInternalLink with internalLinkTypeWebApp to share the Web App.
  #
  # @attr short_name [TD::Types::String] Web App short name.
  # @attr title [TD::Types::String] Web App title.
  # @attr description [TD::Types::String] Web App description.
  # @attr photo [TD::Types::Photo] Web App photo.
  # @attr animation [TD::Types::Animation, nil] Web App animation; may be null.
  class WebApp < Base
    attribute :short_name, TD::Types::String
    attribute :title, TD::Types::String
    attribute :description, TD::Types::String
    attribute :photo, TD::Types::Photo
    attribute :animation, TD::Types::Animation.optional.default(nil)
  end
end
