module TD::Types
  # Describes parameters of a Telegram Premium giveaway.
  #
  # @attr boosted_chat_id [Integer] Identifier of the supergroup or channel chat, which will be automatically boosted
  #   by the winners of the giveaway for duration of the Premium subscription.
  #   If the chat is a channel, then can_post_messages right is required in the channel, otherwise, the user must be an
  #   administrator in the supergroup.
  # @attr additional_chat_ids [Array<Integer>] Identifiers of other supergroup or channel chats that must be subscribed
  #   by the users to be eligible for the giveaway.
  #   There can be up to getOption("giveaway_additional_chat_count_max") additional chats.
  # @attr winners_selection_date [Integer] Point in time (Unix timestamp) when the giveaway is expected to be
  #   performed; must be 60-getOption("giveaway_duration_max") seconds in the future in scheduled giveaways.
  # @attr only_new_members [Boolean] True, if only new members of the chats will be eligible for the giveaway.
  # @attr has_public_winners [Boolean] True, if the list of winners of the giveaway will be available to everyone.
  # @attr country_codes [Array<TD::Types::String>, nil] The list of two-letter ISO 3166-1 alpha-2 codes of countries,
  #   users from which will be eligible for the giveaway.
  #   If empty, then all users can participate in the giveaway.
  #   There can be up to getOption("giveaway_country_count_max") chosen countries.
  #   Users with phone number that was bought at https://fragment.com can participate in any giveaway and the country
  #   code "FT" must not be specified in the list.
  # @attr prize_description [TD::Types::String] Additional description of the giveaway prize; 0-128 characters.
  class PremiumGiveawayParameters < Base
    attribute :boosted_chat_id, TD::Types::Coercible::Integer
    attribute :additional_chat_ids, TD::Types::Array.of(TD::Types::Coercible::Integer)
    attribute :winners_selection_date, TD::Types::Coercible::Integer
    attribute :only_new_members, TD::Types::Bool
    attribute :has_public_winners, TD::Types::Bool
    attribute :country_codes, TD::Types::Array.of(TD::Types::String).optional.default(nil)
    attribute :prize_description, TD::Types::String
  end
end
