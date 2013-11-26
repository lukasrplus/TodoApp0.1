TodoApp01::Application.routes.draw do

  get "/login" => 'sessions#new'
  get "/logout" => 'sessions#destroy'
  post "/sessions" => 'sessions#create'


# USERSCONTROLLER

resources :users

#


# TASKSCONTROLLER

root 'tasks#welcome'

get '/tasks' => 'tasks#index'

get '/tasks/new' => 'tasks#new', :as => "new_task"
post '/tasks' => 'tasks#create'


get '/tasks/:id' => 'tasks#show', :as => "task"
delete '/tasks/:id' => 'tasks#destroy'

get '/tasks/:id/edit' => 'tasks#edit', :as => "edit_task"
patch '/tasks/:id' => 'tasks#update'

delete '/tasks/:id/archive' => 'tasks#archive', :as => "archive_task"


# ARCHIVEDTASKS CONTROLLER

get '/archivedtasks' => 'archivedtasks#index'

get '/archivedtasks/:id/undo' => 'archivedtasks#undo', :as => "undo_archivedtask"


end
