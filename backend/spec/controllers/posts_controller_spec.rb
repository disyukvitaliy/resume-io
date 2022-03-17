require 'rails_helper'

RSpec.describe PostsController do
  describe 'GET show' do
    subject(:resp) { get :show, params: { path: path } }

    render_views

    let(:post_router_item) { create(:post_router_item, post: post) }
    let(:post) { create(:post, :active) }
    let(:path) { post_router_item.path.sub('/', '') }

    it do
      is_expected.to have_http_status(:ok)
      expect(resp.body).to include(post.title)
      expect(resp.body).to include(post.body)
    end

    context 'when post is not active' do
      let(:post) { create(:post) }

      it { is_expected.to have_http_status(:not_found) }
    end

    context 'when post does not exists' do
      let(:path) { 'wrong' }

      it { is_expected.to have_http_status(:not_found) }
    end
  end
end