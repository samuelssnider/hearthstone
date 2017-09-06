Rails.application.routes.draw do
	root to: 'cards#dashboard'
  resources :cards
end
