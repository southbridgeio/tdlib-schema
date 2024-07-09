module TD::Types
  # The list of quick reply shortcuts has changed.
  #
  # @attr shortcut_ids [Array<Integer>] The new list of identifiers of quick reply shortcuts.
  class Update::QuickReplyShortcuts < Update
    attribute :shortcut_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
  end
end
