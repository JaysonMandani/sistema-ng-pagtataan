Rails.application.routes.draw do
  mount RailsAdmin::Engine => '/admin', as: 'rails_admin'

  devise_for :teachers
  devise_for :members

  devise_scope :member do
    authenticated :member do
      root 'members#index', as: :member_root
    end
  end

  devise_scope :teacher do
    authenticated :teacher do
      root 'teachers#index', as: :teacher_root
    end
  end

  root to: 'welcome#index'
end
