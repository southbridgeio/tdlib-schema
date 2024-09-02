module TD::Types
  # Information about the sponsor of a message.
  #
  # @attr url [TD::Types::String] URL of the sponsor to be opened when the message is clicked.
  # @attr photo [TD::Types::Photo, nil] Photo of the sponsor; may be null if must not be shown.
  # @attr info [TD::Types::String] Additional optional information about the sponsor to be shown along with the
  #   message.
  class MessageSponsor < Base
    attribute :url, TD::Types::String
    attribute :photo, TD::Types::Photo.optional.default(nil)
    attribute :info, TD::Types::String
  end
end
