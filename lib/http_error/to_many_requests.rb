require "http_error/error"

module HttpError
  class ToManyRequests < Error
    self.status = 429
    self.message = 'To Many Requests'
  end
end
