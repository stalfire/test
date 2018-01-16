Rails.application.routes.draw do
	resources :users
	resources :articles
	root "articles#index"
 	get "/owners" => "users#index"
 	get "/:name" => "users#show"
 	get "/:name/articles" => "articles#index"
end
