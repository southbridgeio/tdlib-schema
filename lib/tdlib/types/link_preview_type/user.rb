module TD::Types
  # The link is a link to a user.
  #
  # @attr photo [TD::Types::ChatPhoto, nil] Photo of the user; may be null if none.
  # @attr is_bot [Boolean] True, if the user is a bot.
  class LinkPreviewType::User < LinkPreviewType
    attribute :photo, TD::Types::ChatPhoto.optional.default(nil)
    attribute :is_bot, TD::Types::Bool
  end
end
