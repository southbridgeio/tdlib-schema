module TD::Types
  # Contains information about a Telegram Passport authorization form that was requested.
  #
  # @attr id [Integer] Unique identifier of the authorization form.
  # @attr required_elements [Array<TD::Types::PassportRequiredElement>] Telegram Passport elements that must be
  #   provided to complete the form.
  # @attr privacy_policy_url [TD::Types::String, nil] URL for the privacy policy of the service; may be empty.
  class PassportAuthorizationForm < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :required_elements, TD::Types::Array.of(TD::Types::PassportRequiredElement)
    attribute :privacy_policy_url, TD::Types::String.optional.default(nil)
  end
end
