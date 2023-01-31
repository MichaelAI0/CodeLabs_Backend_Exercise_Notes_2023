Rails.application.routes.draw do
  
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"

  root 'blogs#index'
  get '/about_us', to: 'pages#about_us'
  get '/contact_us', to: 'pages#contact_us'
  get '/faq', to: 'pages#faq'
  get '/terms_of_service', to: 'pages#terms_of_service'
  get '/privacy_policy', to: 'pages#privacy_policy'
  get '/course_catalog', to: 'pages#course_catalog'
  get '/testimonials', to: 'pages#testimonials'
  get '/blogs', to: 'blogs#index'

end
