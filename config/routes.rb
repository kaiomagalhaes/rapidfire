Rapidfire::Engine.routes.draw do
  resources :survey_settings, except: [:index, :show]
  resources :surveys do
    get 'results', on: :member

    resources :questions
    resources :attempts, only: [:new, :create]
  end

  root to: 'surveys#index'
end
