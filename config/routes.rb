Rails.application.routes.draw do
  resources :users do
    resources :pieces
  end

  resources :pieces do
    resources :reviews
  end

  resources :pieces do
    resources :ratings
  end
end
