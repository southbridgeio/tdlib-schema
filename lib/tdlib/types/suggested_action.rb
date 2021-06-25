module TD::Types
  # Describes an action suggested to the current user.
  class SuggestedAction < Base
    %w[
      enable_archive_and_mute_new_chats
      check_phone_number
      see_ticks_hint
      convert_to_broadcast_group
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/suggested_action/#{type}"
    end
  end
end
