class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def current_user
  @user || User.find_by_api_token(params[:api_token])
  end

  def invalidate_token
  self.update_columns(token: nil)
end

def self.valid_login?(email, password)
  user = find_by(email: email)
  if user && user.authenticate(password)
    user
  end
end

  helper_method :current_user

end
