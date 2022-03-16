require 'rails_helper'

RSpec.describe PostRouterItem do
  describe 'deletion of related post' do
    let!(:post) { create(:post) }
    let!(:post_router_item) { create(:post_router_item, post: post) }

    it do
      post.destroy!

      expect { post_router_item.reload }.to raise_error(ActiveRecord::RecordNotFound)
    end
  end
end