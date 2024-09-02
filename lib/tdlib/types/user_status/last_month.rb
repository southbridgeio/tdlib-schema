module TD::Types
  # The user is offline, but was online last month.
  #
  # @attr by_my_privacy_settings [Boolean] Exact user's status is hidden because the current user enabled
  #   {TD::Types::UserPrivacySetting::ShowStatus} privacy setting for the user and has no Telegram Premium.
  class UserStatus::LastMonth < UserStatus
    attribute :by_my_privacy_settings, TD::Types::Bool
  end
end
