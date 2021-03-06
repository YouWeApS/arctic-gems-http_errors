require 'spec_helper'

RSpec.describe HttpError::Error do
  it { is_expected.to be_a StandardError }
end

RSpec.describe HttpError::Teapot do
  it_behaves_like :http_error, 418, "I'm a teapot", 'some message'
end

RSpec.describe HttpError::BadRequest do
  it_behaves_like :http_error, 400, "Bad request", 'some message'
end

RSpec.describe HttpError::Unauthorized do
  it_behaves_like :http_error, 401, 'Unauthorized', 'some message'
end

RSpec.describe HttpError::Forbidden do
  it_behaves_like :http_error, 403, 'Forbidden', 'some message'
end

RSpec.describe HttpError::InternalServerError do
  it_behaves_like :http_error, 500, 'Internal server error', 'some message'
end

RSpec.describe HttpError::NotImplemented do
  it_behaves_like :http_error, 501, 'Not implemented', 'some message'
end

RSpec.describe HttpError::NotFound do
  it_behaves_like :http_error, 404, 'Not found', 'some message'
end

RSpec.describe HttpError::ToManyRequests do
  it_behaves_like :http_error, 429, 'To Many Requests', 'some message'
end
