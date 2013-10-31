class ArchivedtasksController < ApplicationController

def index
  @archivedtasks = Archivedtask.all
end

def undo

  archivedtask = Archivedtask.find_by(id: params[:id])

  new_task = Task.new

  new_task.content = archivedtask.content
  new_task.owner = archivedtask.owner
  new_task.important = archivedtask.important

  new_task.save
  archivedtask.destroy
  redirect_to archivedtasks_url

end





end
