class TasksController < ApplicationController


  def index
    @tasks = Task.all
  end

  def new
  end

  def createtask
   t = Task.new
   t.content = params["content"]
   t.owner = params["owner"]
   t.done = params["done"]
   t.important = params["important"]
   t.save
   redirect_to root_url
  end

def destroy
  task = Task.find_by(id: params[:id])
  task.destroy
  redirect_to root_url
end

def edit
@task = Task.find_by(id: params[:id])

  if @task.done == "true"
    @taskdone = "on"
  end

  if @task.important == "true"
    @taskimportant = "on"
  end

end

def update
task = Task.find_by(id: params[:id])
task.content = params["content"]
task.owner = params["owner"]
task.done = params["done"]
task.important = params["important"]
task.save
redirect_to root_url
end


end

