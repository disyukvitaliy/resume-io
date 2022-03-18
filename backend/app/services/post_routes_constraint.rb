class PostRoutesConstraint
  def matches?(request)
    path = "/#{request.params[:path]}"

    Rails.cache.fetch("#{PostRouterItem.name}:#{path}:exists", expires_in: 5.minutes) do
      PostRouterItem.exists?(path: path)
    end
  end
end
