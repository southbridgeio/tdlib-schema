module TD::Types
  # Download or upload file speed for the user was limited, but it can be restored by subscription to Telegram Premium.
  # The notification can be postponed until a being downloaded or uploaded file is visible to the user Use
  #   getOption("premium_download_speedup") or getOption("premium_upload_speedup") to get expected speedup after subscription
  #   to Telegram Premium.
  #
  # @attr is_upload [Boolean] True, if upload speed was limited; false, if download speed was limited.
  class Update::SpeedLimitNotification < Update
    attribute :is_upload, TD::Types::Bool
  end
end
