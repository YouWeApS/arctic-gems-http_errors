require "http_error/error"

module HttpError
  class NotImplemented < Error
    self.status = 501
    self.message = 'Not implemented'
  end
end
