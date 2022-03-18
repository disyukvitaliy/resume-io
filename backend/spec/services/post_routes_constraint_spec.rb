require 'rails_helper'

RSpec.describe PostRoutesConstraint do
  subject do
    described_class.new.matches?(
      instance_double(
        ActionDispatch::Request.name,
        params: ActionController::Parameters.new(path: path)
      )
    )
  end

  let(:path) { create(:post_router_item).path.sub('/', '') }

  it { is_expected.to be_truthy }

  context do
    let(:path) { 'it-engineer' }

    it { is_expected.to be_falsey }
  end
end