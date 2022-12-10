# frozen_string_literal: true

Rails.application.routes.draw do
  devise_for :users

  authenticated :user, ->(u) { u.admin? } do
    root 'admin/dashboards#show', as: :admin_root

    namespace :admin do
      resource :dashboard, only: :show
    end
  end

  authenticated :user, ->(u) { u.client? } do
    root 'client/dashboards#show', as: :client_root

    namespace :client do
      resource :dashboard, only: :show
    end
  end

  authenticated :user, ->(u) { u.medium? } do
    root 'medium/dashboards#show', as: :medium_root

    namespace :medium do
      resource :dashboard, only: :show
    end
  end

  devise_scope :user do
    root 'devise/sessions#new', as: :unauthenticated_root
  end
end
