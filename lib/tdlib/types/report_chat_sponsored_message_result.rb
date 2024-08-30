module TD::Types
  # Describes result of sponsored message report.
  class ReportChatSponsoredMessageResult < Base
    %w[
      ok
      failed
      option_required
      ads_hidden
      premium_required
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/report_chat_sponsored_message_result/#{type}"
    end
  end
end
