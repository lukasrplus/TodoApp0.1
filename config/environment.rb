# Load the Rails application.
require File.expand_path('../application', __FILE__)

# Initialize the Rails application.
TodoApp01::Application.initialize!

if Rails.env.development?
CREDENTIALS = YAML.load_file(Rails.root.join('config', 'email.yml'))
end

TASK_EMAIL = Rails.env.development? ? CREDENTIALS['username'] : ENV['TASK_EMAIL']
TASK_PASSWORD = Rails.env.development? ? CREDENTIALS['password'] : ENV['TASK_PASSWORD']





ActionMailer::Base.smtp_settings = {
  user_name: TASK_EMAIL,
  password: TASK_PASSWORD,
  address: 'smtp.gmail.com',
  port: 587,
  authentication: 'plain',
  enable_starttls_auto: true
}
