module TD::Types
  # Basic information about a quick reply shortcut has changed.
  # This update is guaranteed to come before the quick shortcut name is returned to the application.
  #
  # @attr shortcut [TD::Types::QuickReplyShortcut] New data about the shortcut.
  class Update::QuickReplyShortcut < Update
    attribute :shortcut, TD::Types::QuickReplyShortcut
  end
end
