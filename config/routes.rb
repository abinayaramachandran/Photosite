Rails.application.routes.draw do
  get 'photos/index/:id' => 'photos#index', as: 'user_photos'
  get 'users/index' => 'users#index'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
