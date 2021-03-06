require "http_error/error"

module HttpError
  # InternalServerError is used by all other errors to inherit from
  class Unauthorized < Error
    self.status = 401
    self.message = 'Unauthorized'
  end
end
