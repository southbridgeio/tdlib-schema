module TD::Types
  # Describes type of limit, increased for Premium users.
  class PremiumLimitType < Base
    %w[
      supergroup_count
      pinned_chat_count
      created_public_chat_count
      saved_animation_count
      favorite_sticker_count
      chat_folder_count
      chat_folder_chosen_chat_count
      pinned_archived_chat_count
      pinned_saved_messages_topic_count
      caption_length
      bio_length
      chat_folder_invite_link_count
      shareable_chat_folder_count
      active_story_count
      weekly_sent_story_count
      monthly_sent_story_count
      story_caption_length
      story_suggested_reaction_area_count
      similar_chat_count
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/premium_limit_type/#{type}"
    end
  end
end
