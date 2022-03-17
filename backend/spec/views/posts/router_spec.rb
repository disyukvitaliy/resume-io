require 'rails_helper'

RSpec.describe 'posts/_router.html.erb' do
  subject do
    render partial: 'posts/router', locals: { post_router_item: post_router_item }
  end

  context 'there is post_router for router_item' do
    let!(:post_router) { create(:post_router) }
    let!(:post_router_item) { create(:post_router_item, :active, router: post_router) }
    let!(:post_router_item_inactive) { create(:post_router_item, router: post_router) }

    it do
      is_expected.to include('id="post-router"')
      is_expected.to include(post_router_item.path)
      is_expected.not_to include(post_router_item_inactive.path)
    end
  end

  context 'there is not post_router for router_item' do
    let!(:post_router_item) { create(:post_router_item, :active) }

    it { is_expected.to be_blank }
  end
end