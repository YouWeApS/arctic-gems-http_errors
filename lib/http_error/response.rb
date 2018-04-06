module HttpError
  module Response
    extend ActiveSupport::Concern

    included do
      rescue_from HttpError::Error do |error|
        Rails.logger.debug "Rescuing from #{error.class}. Status: #{error.status}. Message: #{error.message}"
        render_error error
      end

      private

        def render_error(error)
          hash = {
            error: error.message,
          }

          render \
            text: error.message,
            json: hash,
            status: error.status
        end
    end
  end
end
