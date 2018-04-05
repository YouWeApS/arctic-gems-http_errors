require "bundler/setup"
require "http_error"

RSpec.configure do |config|
  # Enable flags like --only-failures and --next-failure
  config.example_status_persistence_file_path = ".rspec_status"

  # Disable RSpec exposing methods globally on `Module` and `main`
  config.disable_monkey_patching!

  config.expect_with :rspec do |c|
    c.syntax = :expect
  end
end

RSpec.shared_examples :http_error do |expected_status, class_message, instance_message|
  it { is_expected.to be_a HttpError::Error }
  let(:error) { described_class.new instance_message }

  describe '#status' do
    subject { error.status }
    it { is_expected.to eql expected_status }
  end

  describe '.status' do
    subject { described_class.status }
    it { is_expected.to eql expected_status }
  end

  describe '#message' do
    subject { error.message }
    it { is_expected.to eql instance_message }
  end

  describe '.message' do
    subject { described_class.message }
    it { is_expected.to eql class_message }
  end
end
