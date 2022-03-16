class PostsController < ApplicationController
  def show
    @post_router_item = find_post_router_item
    @post = @post_router_item.post
  end

  private

  def find_post_router_item
    PostRouterItem
      .includes(:post)
      .references(:post)
      .merge(Post.active)
      .find_by!(path: "/#{params[:path]}")
  end
end
