require 'rails_helper'

RSpec.describe PostRouterItem do
  describe 'deletion of related post' do
    let!(:post_router_item) { create(:post_router_item) }

    it do
      post_router_item.post.destroy!

      expect { post_router_item.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end

  describe 'deletion of related router' do
    let!(:post_router_item) { create(:post_router_item, :with_router) }

    it do
      expect { post_router_item.router.destroy! }
        .to change { post_router_item.reload.router_id }.to(nil)
    end
  end
end