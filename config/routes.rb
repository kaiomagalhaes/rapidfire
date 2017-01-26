Rapidfire::Engine.routes.draw do
  resources :survey_settings, except: [:index, :show, :new]
  resources :surveys do
    get 'results', on: :member

    resources :questions
    resources :attempts, only: [:new, :create]
  end

  root to: 'surveys#index'
end
