Rails.application.routes.draw do
  get 'charges/new'
  get 'charges/create'
  resources :payments
  resources :booking_tickets do
    collection do
      get :reserve
    end  
  end
  resources :movie_shows do
  	collection do
       get ':id/shows', to: "movie_shows#itsshows", as: 'showing'
  	end
  end
  resources :cashiers
  resources :customers
  resources :charges, only: [:new, :create]
  get 'home/index'
  devise_for :users
   root to: "movie_shows#index"

end
