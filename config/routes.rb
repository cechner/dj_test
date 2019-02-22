Rails.application.routes.draw do
  root 'pages#main'

  post 'pages/schedule'
end
