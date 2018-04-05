module HttpError
  # InternalServerError is used by all other errors to inherit from
  class Error < StandardError
    class << self
      attr_accessor :status
      attr_accessor :message
    end

    def status
      self.class.status || 500
    end

    def error
      message || self.class.message
    end
  end
end
