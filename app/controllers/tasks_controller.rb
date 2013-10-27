class TasksController < ApplicationController


  def index

    @tasks = Task.all

    important_tasks = Array.new
    @tasks.each do |t|
      if t.important
        important_tasks << t
      end
    end

    @count_important_tasks = important_tasks.count

  end

  def new
  end

  def createtask
   t = Task.new
   t.content = params["content"]
   t.owner = params["owner"]
   t.important = params["important"]
   t.save
   redirect_to root_url
  end

def destroy
  task = Task.find_by(id: params[:id])
  task.destroy
  redirect_to root_url
end

def archiveindex
  @archivedtasks = Archivedtask.all
end

def archive
  task = Task.find_by(id: params[:id])
  a = Archivedtask.new
  a.content = task.content
  a.owner = task.owner
  a.important = task.important
  a.save
  task.destroy
  redirect_to root_url
end

def edit
@task = Task.find_by(id: params[:id])
end

def update
task = Task.find_by(id: params[:id])
task.content = params["content"]
task.owner = params["owner"]
task.important = params["important"]
task.save
redirect_to root_url
end


end

