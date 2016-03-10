Rails.application.routes.draw do

  devise_for :teachers
  devise_for :members

  devise_scope :member do
    authenticated :member do
      root 'schedules#index', as: :member_root
    end
  end

  devise_scope :teacher do
    authenticated :teacher do
      root 'teachers#index', as: :teacher_root
    end
  end

  resources :schedules

  root to: 'welcome#index'

  get '/subscribe/:id', to: 'members#subscribe', as: :subscribe
  get '/unsubscribe/:id', to: 'members#unsubscribe', as: :unsubscribe
end
