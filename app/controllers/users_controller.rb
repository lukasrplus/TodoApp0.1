class UsersController < ApplicationController

def new
end

def create
  u = User.new
  u.username = params[:username]
  u.email = params[:email]
  u.password = params[:password]
  u.password_confirmation = params[:password_confirmation]
  u.save
  session[:u_id] = u.id
  redirect_to tasks_url
end

def show
end

def destroy
end

def edit
end

def update
  u = User.find_by(:id => session[:id])
  u.username = params[:username]
  u.email = params[:email]
  u.password = params[:password]
  u.password_confirmation = params[:password_confirmation]
  u.save

  redirect_to tasks_url

end



end
