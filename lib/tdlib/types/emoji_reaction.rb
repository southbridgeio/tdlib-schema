module TD::Types
  # Contains information about an emoji reaction.
  #
  # @attr emoji [TD::Types::String] Text representation of the reaction.
  # @attr title [TD::Types::String] Reaction title.
  # @attr is_active [Boolean] True, if the reaction can be added to new messages and enabled in chats.
  # @attr static_icon [TD::Types::Sticker] Static icon for the reaction.
  # @attr appear_animation [TD::Types::Sticker] Appear animation for the reaction.
  # @attr select_animation [TD::Types::Sticker] Select animation for the reaction.
  # @attr activate_animation [TD::Types::Sticker] Activate animation for the reaction.
  # @attr effect_animation [TD::Types::Sticker] Effect animation for the reaction.
  # @attr around_animation [TD::Types::Sticker, nil] Around animation for the reaction; may be null.
  # @attr center_animation [TD::Types::Sticker, nil] Center animation for the reaction; may be null.
  class EmojiReaction < Base
    attribute :emoji, TD::Types::String
    attribute :title, TD::Types::String
    attribute :is_active, TD::Types::Bool
    attribute :static_icon, TD::Types::Sticker
    attribute :appear_animation, TD::Types::Sticker
    attribute :select_animation, TD::Types::Sticker
    attribute :activate_animation, TD::Types::Sticker
    attribute :effect_animation, TD::Types::Sticker
    attribute :around_animation, TD::Types::Sticker.optional.default(nil)
    attribute :center_animation, TD::Types::Sticker.optional.default(nil)
  end
end
