module TD::Types
  # Describes the reason why a chat is reported.
  class ReportReason < Base
    %w[
      spam
      violence
      pornography
      child_abuse
      copyright
      unrelated_location
      fake
      illegal_drugs
      personal_details
      custom
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/report_reason/#{type}"
    end
  end
end
