module TD::Types
  # Describes settings for a business account start page.
  #
  # @attr title [TD::Types::String] Title text of the start page.
  # @attr message [TD::Types::String] Message text of the start page.
  # @attr sticker [TD::Types::Sticker, nil] Greeting sticker of the start page; may be null if none.
  class BusinessStartPage < Base
    attribute :title, TD::Types::String
    attribute :message, TD::Types::String
    attribute :sticker, TD::Types::Sticker.optional.default(nil)
  end
end
