module HttpError
  class InternalServerError < Error
    self.status = 500
  end
end
