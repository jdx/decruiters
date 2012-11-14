Decruiters::Application.routes.draw do
  root to: 'home#index'

  match '/auth/:provider/callback', to: 'sessions#create'
  match 'logout' => 'sessions#destroy'
  post 'sendgrid' => 'sendgrid#create'

end
