require "http_error/error"

module HttpError
  class BadRequest< Error
    self.status = 400
    self.message = 'Bad request'
  end
end
