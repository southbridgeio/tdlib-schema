module TD::Types
  # Describes a sponsored message.
  #
  # @attr id [Integer] Unique sponsored message identifier.
  # @attr sponsor_chat_id [Integer] Chat identifier.
  # @attr link [TD::Types::InternalLinkType, nil] An internal link to be opened when the sponsored message is clicked;
  #   may be null.
  #   If null, the sponsor chat needs to be opened instead.
  # @attr content [TD::Types::MessageContent] Content of the message.
  class SponsoredMessage < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :sponsor_chat_id, TD::Types::Coercible::Integer
    attribute :link, TD::Types::InternalLinkType.optional.default(nil)
    attribute :content, TD::Types::MessageContent
  end
end
