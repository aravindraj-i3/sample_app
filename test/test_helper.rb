ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"

# Ensure integration test specific methods are available to integration tests
class ActionDispatch::IntegrationTest
  # Returns true if a test user is logged in.
  def is_logged_in?
    # In integration tests, 'session' refers to the session from the last request
    !session[:user_id].nil?
  end

  # This is another common helper for logging in a test user in integration tests
  # It simulates a POST request to the login path
  def log_in_as(user, password: 'password', remember_me: '1')
    post login_path, params: { session: { email: user.email,
                                          password: password,
                                          remember_me: remember_me } }
  end
end
