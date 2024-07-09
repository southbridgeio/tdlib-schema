module TD::Types
  # Describes actions which must be possible to do through a chat action bar.
  class ChatActionBar < Base
    %w[
      report_spam
      report_unrelated_location
      invite_members
      report_add_block
      add_contact
      share_phone_number
      join_request
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/chat_action_bar/#{type}"
    end
  end
end
