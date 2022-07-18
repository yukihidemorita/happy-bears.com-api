Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  namespace 'api' do
    namespace 'v1' do
      resources :users, only: [:index, :create]
      namespace :menu do
        resources :categories, only: [:index]
        resources :items, only: [:index]
        resources :types, only: [:index]
        resources :recommends, only: [:index]
      end
      namespace :order do
        resources :questionnaires, only: [:index, :show]
        resources :services, only: [:create]
        resources :available_dates, only: [:index]
      end
      namespace :payment_method do
        resources :credit_cards, only: [:create]
        resources :np_summaries, only: [:create, :update]
      end
    end
  end
end
