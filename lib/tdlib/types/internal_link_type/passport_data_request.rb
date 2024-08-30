module TD::Types
  # The link contains a request of Telegram passport data.
  # Call getPassportAuthorizationForm with the given parameters to process the link if the link was received from
  #   outside of the application; otherwise, ignore it.
  #
  # @attr bot_user_id [Integer] User identifier of the service's bot; the corresponding user may be unknown yet.
  # @attr scope [TD::Types::String] Telegram Passport element types requested by the service.
  # @attr public_key [TD::Types::String] Service's public key.
  # @attr nonce [TD::Types::String] Unique request identifier provided by the service.
  # @attr callback_url [TD::Types::String, nil] An HTTP URL to open once the request is finished, canceled, or failed
  #   with the parameters tg_passport=success, tg_passport=cancel, or tg_passport=error&error=...
  #   respectively.
  #   If empty, then onActivityResult method must be used to return response on Android, or the link
  #   tgbot{bot_user_id}://passport/success or tgbot{bot_user_id}://passport/cancel must be opened otherwise.
  class InternalLinkType::PassportDataRequest < InternalLinkType
    attribute :bot_user_id, TD::Types::Coercible::Integer
    attribute :scope, TD::Types::String
    attribute :public_key, TD::Types::String
    attribute :nonce, TD::Types::String
    attribute :callback_url, TD::Types::String.optional.default(nil)
  end
end
