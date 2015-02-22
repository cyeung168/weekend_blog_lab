Rails.application.routes.draw do
  root 'authors#index'

  resources :authors do #, except show // does all the restful routing for one resource
    resources :posts, shallow: true
  end

end
