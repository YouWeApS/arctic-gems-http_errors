require "http_error/error"

module HttpError
  class NotFound < Error
    self.status = 404
    self.message = 'Not found'
  end
end
