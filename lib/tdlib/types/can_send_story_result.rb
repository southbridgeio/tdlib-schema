module TD::Types
  # Represents result of checking whether the current user can send a story in the specific chat.
  class CanSendStoryResult < Base
    %w[
      ok
      premium_needed
      boost_needed
      active_story_limit_exceeded
      weekly_limit_exceeded
      monthly_limit_exceeded
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/can_send_story_result/#{type}"
    end
  end
end
