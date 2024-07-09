module TD::Types
  # Describes settings for a business account start page to set.
  #
  # @attr title [TD::Types::String] Title text of the start page; 0-getOption("business_start_page_title_length_max")
  #   characters.
  # @attr message [TD::Types::String] Message text of the start page;
  #   0-getOption("business_start_page_message_length_max") characters.
  # @attr sticker [TD::Types::InputFile] Greeting sticker of the start page; pass null if none.
  #   The sticker must belong to a sticker set and must not be a custom emoji.
  class InputBusinessStartPage < Base
    attribute :title, TD::Types::String
    attribute :message, TD::Types::String
    attribute :sticker, TD::Types::InputFile
  end
end
