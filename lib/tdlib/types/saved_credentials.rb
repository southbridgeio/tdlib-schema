module TD::Types
  # Contains information about saved payment credentials.
  #
  # @attr id [TD::Types::String] Unique identifier of the saved credentials.
  # @attr title [TD::Types::String] Title of the saved credentials.
  class SavedCredentials < Base
    attribute :id, TD::Types::String
    attribute :title, TD::Types::String
  end
end
