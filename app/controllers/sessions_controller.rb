class SessionsController < ApplicationController



def new
end


def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
    session[:u_id] = user.id
    redirect_to tasks_url, notice: "Hello, #{user.email}"

    else
    flash.now.alert = "Invalid email or password"
    render "new"
    end

end



end
