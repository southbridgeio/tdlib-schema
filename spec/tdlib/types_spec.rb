# frozen_string_literal: true

RSpec.describe TD::Types do
  describe '.wrap' do
    subject { described_class.wrap(data) }

    let(:data) { { '@type' => 'authorizationStateClosed' } }

    it { is_expected.to be_instance_of TD::Types::AuthorizationState::Closed }
  end
end
