module TD::Types
  # An identity document.
  #
  # @attr number [TD::Types::String] Document number; 1-24 characters.
  # @attr expiration_date [TD::Types::Date, nil] Document expiration date; may be null if not applicable.
  # @attr front_side [TD::Types::DatedFile] Front side of the document.
  # @attr reverse_side [TD::Types::DatedFile, nil] Reverse side of the document; only for driver license and identity
  #   card; may be null.
  # @attr selfie [TD::Types::DatedFile, nil] Selfie with the document; may be null.
  # @attr translation [Array<TD::Types::DatedFile>] List of files containing a certified English translation of the
  #   document.
  class IdentityDocument < Base
    attribute :number, TD::Types::String
    attribute :expiration_date, TD::Types::Date.optional.default(nil)
    attribute :front_side, TD::Types::DatedFile
    attribute :reverse_side, TD::Types::DatedFile.optional.default(nil)
    attribute :selfie, TD::Types::DatedFile.optional.default(nil)
    attribute :translation, TD::Types::Array.of(TD::Types::DatedFile)
  end
end
