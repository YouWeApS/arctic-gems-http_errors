require "http_error/error"

module HttpError
  # InternalServerError is used by all other errors to inherit from
  class Forbidden < Error
    self.status = 403
    self.message = 'Forbidden'
  end
end
