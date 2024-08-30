module TD::Types
  # Describes current boost status of a chat.
  #
  # @attr boost_url [TD::Types::String] An HTTP URL, which can be used to boost the chat.
  # @attr applied_slot_ids [Array<Integer>] Identifiers of boost slots of the current user applied to the chat.
  # @attr level [Integer] Current boost level of the chat.
  # @attr gift_code_boost_count [Integer] The number of boosts received by the chat from created Telegram Premium gift
  #   codes and giveaways; always 0 if the current user isn't an administrator in the chat.
  # @attr boost_count [Integer] The number of boosts received by the chat.
  # @attr current_level_boost_count [Integer] The number of boosts added to reach the current level.
  # @attr next_level_boost_count [Integer] The number of boosts needed to reach the next level; 0 if the next level
  #   isn't available.
  # @attr premium_member_count [Integer] Approximate number of Telegram Premium subscribers joined the chat; always 0
  #   if the current user isn't an administrator in the chat.
  # @attr premium_member_percentage [Float] A percentage of Telegram Premium subscribers joined the chat; always 0 if
  #   the current user isn't an administrator in the chat.
  # @attr prepaid_giveaways [Array<TD::Types::PrepaidPremiumGiveaway>] The list of prepaid giveaways available for the
  #   chat; only for chat administrators.
  class ChatBoostStatus < Base
    attribute :boost_url, TD::Types::String
    attribute :applied_slot_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :level, TD::Types::Coercible::Integer
    attribute :gift_code_boost_count, TD::Types::Coercible::Integer
    attribute :boost_count, TD::Types::Coercible::Integer
    attribute :current_level_boost_count, TD::Types::Coercible::Integer
    attribute :next_level_boost_count, TD::Types::Coercible::Integer
    attribute :premium_member_count, TD::Types::Coercible::Integer
    attribute :premium_member_percentage, TD::Types::Coercible::Float
    attribute :prepaid_giveaways, TD::Types::Array.of(TD::Types::PrepaidPremiumGiveaway)
  end
end
