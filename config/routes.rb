Rails.application.routes.draw do
  root 'suggestions#index'
  resources :suggestions, only: [:index, :new, :create] do
    member do
      put 'upvote', to: 'suggestions#upvote'
      put 'downvote', to: 'suggestions#downvote'
    end
  end
end
