module TD::Types
  # Describes an option to report a sponsored message.
  #
  # @attr id [String] Unique identifier of the option.
  # @attr text [TD::Types::String] Text of the option.
  class ReportChatSponsoredMessageOption < Base
    attribute :id, TD::Types::Coercible::String
    attribute :text, TD::Types::String
  end
end
