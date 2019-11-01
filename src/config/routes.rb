Rails.application.routes.draw do
  devise_for :users
  root 'pages#homepage'
  get 'pages/contact'
  get 'pages/pricing'

  resources :cars

  # # shows all contacts
  # get 'contact', as: 'contact#index'

  # # shows 1 contact
  # get 'contacts/:id', as: 'contact#show'

  # # page to input data for new contact
  # get 'contacts/new', as: 'contact#new'

  # # page to input data for editing a contact
  # get 'contacts/edit', as: 'contact#edit'

  # # destroys a contact
  # delete 'contacts/:id', as: 'contact#destroy'

  # # creates a new contact
  # post 'contacts', as: 'contact#create'

  # # updates a contact
  # patch 'contacts/:id', as: 'contact#update'
  


  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
