module TD::Types
  # A quick reply shortcut and all its messages were deleted.
  #
  # @attr shortcut_id [Integer] The identifier of the deleted shortcut.
  class Update::QuickReplyShortcutDeleted < Update
    attribute :shortcut_id, TD::Types::Coercible::Integer
  end
end
