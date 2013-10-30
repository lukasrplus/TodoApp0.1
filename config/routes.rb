TodoApp01::Application.routes.draw do

get '/tasks' => 'tasks#index'

get '/tasks/new' => 'tasks#new', :as => "new_task"
post '/tasks' => 'tasks#create'


get '/tasks/:id' => 'tasks#show', :as => "task"
delete '/tasks/:id' => 'tasks#destroy'

get '/tasks/:id/edit' => 'tasks#edit', :as => "edit_task"
patch '/tasks/:id' => 'tasks#update'



# CREATE A NEW CONTROLLER/RESSOURCE FOR ARCHIVE





get '/tasks/:id/archive' => 'tasks#archive', :as => "archive_task"


get '/archivedtasks' => 'archivedtasks#index'

end
