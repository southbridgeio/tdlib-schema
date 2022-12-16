module TD::Types
  # Contains information about a phone number.
  #
  # @attr country [TD::Types::CountryInfo, nil] Information about the country to which the phone number belongs; may be
  #   null.
  # @attr country_calling_code [TD::Types::String] The part of the phone number denoting country calling code or its
  #   part.
  # @attr formatted_phone_number [TD::Types::String] The phone number without country calling code formatted
  #   accordingly to local rules.
  #   Expected digits are returned as '-', but even more digits might be entered by the user.
  class PhoneNumberInfo < Base
    attribute :country, TD::Types::CountryInfo.optional.default(nil)
    attribute :country_calling_code, TD::Types::String
    attribute :formatted_phone_number, TD::Types::String
  end
end
