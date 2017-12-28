Rails.application.routes.draw do
<<<<<<< HEAD
  mount Uploader::Engine => '/uploader'
=======
  get 'booking/new'

  get 'booking/create'

>>>>>>> 2c6a8e1669d6f1c9fb021187cf588a228fdd9b53
  get 'admin_section/index'

  resources :charges , only: [:new , :create]
  get 'thanks' , to: 'charges#thanks' , as: 'thanks'
  
  resources :booking
  # the booking resource with rooms
  resources :rooms do
    resources :booking
  end 
  resources :rooms
  devise_for :users
  resources :users
  resources :visitors
  match '/contact' => 'visitors#contact', :via => :get
  match '/tours' => 'visitors#tours', :via => :get
  match '/about' => 'visitors#about', :via => :get
  root to: 'visitors#index'
end
