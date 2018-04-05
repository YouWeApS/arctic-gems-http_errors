require "http_error/error"

module HttpError
  class InternalServerError < Error
    self.status = 500
    self.message = 'Internal server error'
  end
end
