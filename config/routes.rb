Rails.application.routes.draw do
  resources :todolists do
    resources :todo_items do
      member do
        patch:complete
      end
    end
  end
    # resources:todo_items
   
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root "todolists#index"

end
