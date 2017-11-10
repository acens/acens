Rails.application.routes.draw do



  devise_for :users, :skip => [:registrations]
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  devise_scope :user do
     get "/login" => "devise/sessions#new" # custom path to login/sign_in
    #  get "/sign_up" => "devise/registrations#new", as: "new_user_registration" # custom path to sign_up/registration
     get 'users/edit' => 'devise/registrations#edit', :as => 'edit_user_registration'
     put 'users' => 'devise/registrations#update', :as => 'user_registration'

  end
  resources :articles
  resources :portfolios
  resources :surveys, only: [:new, :create]
  get "/pesquisa", :to => "surveys#new"
  root "home#index"

  match '/contacts', to: 'contacts#new', via: 'get'
  resources "contacts", only: [:new, :create]

  # error pages

  get "/delete_imagem", :to => "portfolio#delete_picture"
  get "/404", :to => "errors#not_found"
  get "/422", :to => "errors#unacceptable"
  get "/500", :to => "errors#internal_error"
  mount Ckeditor::Engine => '/ckeditor'

end
