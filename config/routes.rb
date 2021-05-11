Rails.application.routes.draw do
  root 'suggestions#index'
  resources :suggestions do
    member do
      put 'upvote', to: 'suggestions#upvote'
      put 'downvote', to: 'suggestions#downvote'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
