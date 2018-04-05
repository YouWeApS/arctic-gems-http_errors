require "http_error/error"

module HttpError
  class Teapot < Error
    self.status = 418
    self.message = "I'm a teapot"
  end
end
