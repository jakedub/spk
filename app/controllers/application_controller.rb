class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception


  def current_user
  @user || User.find_by_api_token(params[:api_token])
  end

  helper_method :current_user

end
