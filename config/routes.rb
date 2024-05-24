Rails.application.routes.draw do
  get 'home_pages/index'
  get 'home_pages/show'
  get 'home_pages/new'
  get 'home_pages/create'
  get 'home_pages/edit'
  get 'home_pages/update'
  get 'home_pages/destroy'
  get 'contacts/index'
  get 'contacts/show'
  get 'contacts/new'
  get 'contacts/create'
  get 'contacts/edit'
  get 'contacts/update'
  get 'contacts/destroy'
  get 'schedules/index'
  get 'schedules/show'
  get 'schedules/new'
  get 'schedules/create'
  get 'schedules/edit'
  get 'schedules/update'
  get 'schedules/destroy'
  get 'pre_natals/index'
  get 'pre_natals/show'
  get 'pre_natals/new'
  get 'pre_natals/create'
  get 'pre_natals/edit'
  get 'pre_natals/update'
  get 'pre_natals/destroy'
  get 'yoga_styles/index'
  get 'yoga_styles/show'
  get 'yoga_styles/new'
  get 'yoga_styles/create'
  get 'yoga_styles/edit'
  get 'yoga_styles/update'
  get 'yoga_styles/destroy'
  get 'teacher_cvs/index'
  get 'teacher_cvs/show'
  get 'teacher_cvs/new'
  get 'teacher_cvs/create'
  get 'teacher_cvs/edit'
  get 'teacher_cvs/update'
  get 'teacher_cvs/destroy'
  devise_for :users
  root to: "pages#home"
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Reveal health status on /up that returns 200 if the app boots with no exceptions, otherwise 500.
  # Can be used by load balancers and uptime monitors to verify that the app is live.
  get "up" => "rails/health#show", as: :rails_health_check

  # Defines the root path route ("/")
  # root "posts#index"
end
