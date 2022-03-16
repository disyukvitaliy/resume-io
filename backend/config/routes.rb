Rails.application.routes.draw do
  get '*path', to: 'posts#show'
end
