module TD::Types
  # The user joins a chat and subscribes to regular payments in Telegram Stars.
  #
  # @attr invite_link [TD::Types::String] Invite link to use.
  class TelegramPaymentPurpose::JoinChat < TelegramPaymentPurpose
    attribute :invite_link, TD::Types::String
  end
end
