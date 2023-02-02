Rails.application.routes.draw do
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  namespace :survey do 
    get '/rating', to: 'survey#rating'
    get '/multiple-choice-questions', to: 'survey#multiple_choice_questions'
    get '/open-ended-feedback', to: 'survey#open_ended_feedback'
    get '/end', to: 'survey#end'
  end
end
