class ArchivedtasksController < ApplicationController

def index
  @archivedtasks = Archivedtask.all
end




end
