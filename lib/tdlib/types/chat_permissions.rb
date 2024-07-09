module TD::Types
  # Describes actions that a user is allowed to take in a chat.
  #
  # @attr can_send_basic_messages [Boolean] True, if the user can send text messages, contacts, giveaways, giveaway
  #   winners, invoices, locations, and venues.
  # @attr can_send_audios [Boolean] True, if the user can send music files.
  # @attr can_send_documents [Boolean] True, if the user can send documents.
  # @attr can_send_photos [Boolean] True, if the user can send photos.
  # @attr can_send_videos [Boolean] True, if the user can send videos.
  # @attr can_send_video_notes [Boolean] True, if the user can send video notes.
  # @attr can_send_voice_notes [Boolean] True, if the user can send voice notes.
  # @attr can_send_polls [Boolean] True, if the user can send polls.
  # @attr can_send_other_messages [Boolean] True, if the user can send animations, games, stickers, and dice and use
  #   inline bots.
  # @attr can_add_web_page_previews [Boolean] True, if the user may add a web page preview to their messages.
  # @attr can_change_info [Boolean] True, if the user can change the chat title, photo, and other settings.
  # @attr can_invite_users [Boolean] True, if the user can invite new users to the chat.
  # @attr can_pin_messages [Boolean] True, if the user can pin messages.
  # @attr can_create_topics [Boolean] True, if the user can create topics.
  class ChatPermissions < Base
    attribute :can_send_basic_messages, TD::Types::Bool
    attribute :can_send_audios, TD::Types::Bool
    attribute :can_send_documents, TD::Types::Bool
    attribute :can_send_photos, TD::Types::Bool
    attribute :can_send_videos, TD::Types::Bool
    attribute :can_send_video_notes, TD::Types::Bool
    attribute :can_send_voice_notes, TD::Types::Bool
    attribute :can_send_polls, TD::Types::Bool
    attribute :can_send_other_messages, TD::Types::Bool
    attribute :can_add_web_page_previews, TD::Types::Bool
    attribute :can_change_info, TD::Types::Bool
    attribute :can_invite_users, TD::Types::Bool
    attribute :can_pin_messages, TD::Types::Bool
    attribute :can_create_topics, TD::Types::Bool
  end
end
