class UserMailer < ActionMailer::Base
  default from: "lukasrplus@yahoo.com"

  def send_signup_welcome(user)
    @u = user
    # gets the user from the CREATE Controller

    mail to: user.email, :subject => "Congrats. You have become an officle TASKSMASHR"

  end


end
