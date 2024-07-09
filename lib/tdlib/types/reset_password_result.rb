module TD::Types
  # Represents result of 2-step verification password reset.
  class ResetPasswordResult < Base
    %w[
      ok
      pending
      declined
    ].each do |type|
      autoload TD::Types.camelize(type), "tdlib/types/reset_password_result/#{type}"
    end
  end
end
