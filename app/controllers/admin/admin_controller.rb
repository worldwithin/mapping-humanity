class Admin::AdminController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :authenticate_admin_user!

  layout 'admin'

  def dashboard
  end
end
