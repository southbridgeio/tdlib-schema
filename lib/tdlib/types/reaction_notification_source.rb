module TD::Types
  # Describes sources of reactions for which notifications will be shown.
  class ReactionNotificationSource < Base
    %w[
      none
      contacts
      all
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/reaction_notification_source/#{type}"
    end
  end
end
