module TD::Types
  # Describes available user privacy settings.
  class UserPrivacySetting < Base
    %w[
      show_status
      show_profile_photo
      show_link_in_forwarded_messages
      show_phone_number
      show_bio
      show_birthdate
      allow_chat_invites
      allow_calls
      allow_peer_to_peer_calls
      allow_finding_by_phone_number
      allow_private_voice_and_video_note_messages
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/user_privacy_setting/#{type}"
    end
  end
end
