module TD::Types
  # Describes a feature available to Business user accounts.
  class BusinessFeature < Base
    %w[
      location
      opening_hours
      quick_replies
      greeting_message
      away_message
      account_links
      start_page
      bots
      emoji_status
      chat_folder_tags
      upgraded_stories
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/business_feature/#{type}"
    end
  end
end
