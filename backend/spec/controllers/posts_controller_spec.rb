require 'rails_helper'

RSpec.describe PostsController do
  describe 'GET show' do
    render_views

    let!(:post_router_item) { create(:post_router_item, post: post, path: "/#{path}") }

    let(:post) { create(:post, :active) }

    let(:path) { 'test' }

    it do
      get :show, params: { path: path }

      expect(response).to have_http_status(:ok)
      expect(response.body).to include(post.title)
      expect(response.body).to include(post.body)
    end

    context 'when post is not active' do
      let(:post) { create(:post) }

      it do
        get :show, params: { path: path }

        expect(response).to have_http_status(:not_found)
      end
    end

    context 'when post does not exists' do
      it do
        get :show, params: { path: 'wrong' }

        expect(response).to have_http_status(:not_found)
      end
    end
  end
end