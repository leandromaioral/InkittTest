Rails.application.routes.draw do
  resource :answer_sheets, only: :update

  resources :questions, only: %i(index show) do
    collection { get :resume }
  end

  root to: 'questions#index'
end
