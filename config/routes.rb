Rails.application.routes.draw do
  root "welcome#index"

  resources :blogs do
    resources :comments
  end

end
