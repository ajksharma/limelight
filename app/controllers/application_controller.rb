class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :ensure_signed_in

  def ensure_signed_in
    unless user_signed_in?
      store_request_url
      redirect_to login_path
    end
  end

  def current_user
    @current_user ||= User.find_by_id current_user_id
  end
  helper_method :current_user

  def user_signed_in?
    current_user_id.present? && current_user.present?
  end
  helper_method :user_signed_in?

  def current_user_id
    session[:user_id]
  end

  def store_request_url
    session[:redirect_to] = request.url
  end
  helper_method :store_request_url
end
