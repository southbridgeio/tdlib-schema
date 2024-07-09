module TD::Types
  # Represents a part of the text which must be formatted differently.
  class TextEntityType < Base
    %w[
      mention
      hashtag
      cashtag
      bot_command
      url
      email_address
      phone_number
      bank_card_number
      bold
      italic
      underline
      strikethrough
      spoiler
      code
      pre
      pre_code
      block_quote
      expandable_block_quote
      text_url
      mention_name
      custom_emoji
      media_timestamp
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/text_entity_type/#{type}"
    end
  end
end
