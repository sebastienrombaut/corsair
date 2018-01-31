Rails.application.routes.draw do

  resources :corsairs
	
  get 'corsairs/new'

  get 'corsairs/show'

  get 'corsairs/edit'

  get 'corsairs/index'

  root 'static_pages#home'





end
