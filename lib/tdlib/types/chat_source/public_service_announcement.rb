module TD::Types
  # The chat contains a public service announcement.
  #
  # @attr type [String] The type of the announcement.
  # @attr text [String] The text of the announcement.
  class ChatSource::PublicServiceAnnouncement < ChatSource
    attribute :type, TD::Types::String
    attribute :text, TD::Types::String
  end
end
