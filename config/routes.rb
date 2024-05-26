Rails.application.routes.draw do
  # Utiliser resources pour générer les routes RESTful pour chaque modèle
  resources :home_pages
  resources :contacts, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  resources :schedules
  resources :pre_natals
  resources :yoga_styles
  resources :teacher_cvs

  # Routes pour devise
  devise_for :users

  # Route pour la page d'accueil
  root to: "pages#home"

  # Route pour le contrôle de santé de l'application
  get "up" => "rails/health#show", as: :rails_health_check
end
