Rails.application.routes.draw do
  get 'reviews/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  Rails.application.routes.draw do
    resources :restaurants do
      resources :reviews, only: [:new, :index, :create]
    end
    resources :reviews, only: [:destroy]
  end

end
