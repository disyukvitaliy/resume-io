Rails.application.routes.draw do
  get '*path', to: 'posts#show', constraints: PostRoutesConstraint.new
end
