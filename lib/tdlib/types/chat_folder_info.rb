module TD::Types
  # Contains basic information about a chat folder.
  #
  # @attr id [Integer] Unique chat folder identifier.
  # @attr title [TD::Types::String] The title of the folder; 1-12 characters without line feeds.
  # @attr icon [TD::Types::ChatFolderIcon] The chosen or default icon for the chat folder.
  # @attr color_id [Integer] The identifier of the chosen color for the chat folder icon; from -1 to 6.
  #   If -1, then color is disabled.
  # @attr is_shareable [Boolean] True, if at least one link has been created for the folder.
  # @attr has_my_invite_links [Boolean] True, if the chat folder has invite links created by the current user.
  class ChatFolderInfo < Base
    attribute :id, TD::Types::Coercible::Integer
    attribute :title, TD::Types::String
    attribute :icon, TD::Types::ChatFolderIcon
    attribute :color_id, TD::Types::Coercible::Integer
    attribute :is_shareable, TD::Types::Bool
    attribute :has_my_invite_links, TD::Types::Bool
  end
end
