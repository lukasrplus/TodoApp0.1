class UserMailer < ActionMailer::Base
  default from: "tasksmashr@gmail.com"

  def send_signup_welcome(user)
    @u = user
    # gets the user from the CREATE Controller

    mail to: user.email, :subject => "WELCOME TO TASKSMASHR"

  end


end
