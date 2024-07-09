module TD::Types
  # Contains information about original story that was reposted.
  #
  # @attr origin [TD::Types::StoryOrigin] Origin of the story that was reposted.
  # @attr is_content_modified [Boolean] True, if story content was modified during reposting; otherwise, story wasn't
  #   modified.
  class StoryRepostInfo < Base
    attribute :origin, TD::Types::StoryOrigin
    attribute :is_content_modified, TD::Types::Bool
  end
end
