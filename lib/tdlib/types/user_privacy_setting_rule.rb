module TD::Types
  # Represents a single rule for managing user privacy settings.
  class UserPrivacySettingRule < Base
    %w[
      allow_all
      allow_contacts
      allow_premium_users
      allow_users
      allow_chat_members
      restrict_all
      restrict_contacts
      restrict_users
      restrict_chat_members
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/user_privacy_setting_rule/#{type}"
    end
  end
end
