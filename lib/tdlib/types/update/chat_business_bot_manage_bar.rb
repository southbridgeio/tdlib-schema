module TD::Types
  # The bar for managing business bot was changed in a chat.
  #
  # @attr chat_id [Integer] Chat identifier.
  # @attr business_bot_manage_bar [TD::Types::BusinessBotManageBar, nil] The new value of the business bot manage bar;
  #   may be null.
  class Update::ChatBusinessBotManageBar < Update
    attribute :chat_id, TD::Types::Coercible::Integer
    attribute :business_bot_manage_bar, TD::Types::BusinessBotManageBar.optional.default(nil)
  end
end
