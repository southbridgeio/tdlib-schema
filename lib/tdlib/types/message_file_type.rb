module TD::Types
  # Contains information about a file with messages exported from another app.
  class MessageFileType < Base
    %w[
      private
      group
      unknown
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/message_file_type/#{type}"
    end
  end
end
