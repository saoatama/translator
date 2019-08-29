Rails.application.routes.draw do
  namespace :private do
    resources :articles
    post "articles/new_file" => "articles#new_file"
  end
  
  devise_for :users, :controllers => {
    :registrations => 'users/registrations',
    :sessions => 'users/sessions'
  }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
