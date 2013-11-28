class TasksController < ApplicationController

  def welcome

    reset_session

  end



  def index


        user = User.find_by(id: session[:u_id])
        @tasks = user.tasks

        if params[:sort].present?
          @tasks = @tasks.where(important: true)

        end

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


def create
   @t = Task.new
   @t.content = params["content"]
   @t.owner = params["owner"]
   @t.important = params["important"]

   user = User.find_by(id: session[:u_id])
   @t.user_id = user.id

  if @t.save
   redirect_to tasks_url
  else
      @errors = @t.errors.full_messages
      render 'new'
  end

end


  def show
    task = Task.find_by(id: params[:id])
  end


def destroy
  @task = Task.find_by(id: params[:id])
  @task.destroy


    respond_to do |format|
      format.html do
        redirect_to tasks_url
      end
      format.js
    end





end


def edit
@task = Task.find_by(id: params[:id])

respond_to do |format|
      format.html do
        redirect_to tasks_url
      end
      format.js
    end

end


def update
task = Task.find_by(id: params[:id])
task.content = params["content"]
task.owner = params["owner"]
task.important = params["important"]
task.save
redirect_to tasks_url

    # respond_to do |format|
    #   format.html do
    #     redirect_to tasks_url
    #   end
    #   format.js
    # end

end


def archive
  task = Task.find_by(id: params[:id])
  a = Archivedtask.new
  a.content = task.content
  a.owner = task.owner
  a.important = task.important
  a.user_id = task.user_id
  a.save
  task.destroy
  redirect_to tasks_url
end


end

