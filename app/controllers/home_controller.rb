class HomeController < ApplicationController
    before_action :authenticate_user!
  
    def index
      # Display content accessible only to logged-in users
    end
  
    private
  
    def authenticate_user!
      redirect_to new_session_path unless current_user
    end
  
    def current_user
      @current_user ||= User.find_by(id: session[:user_id])
    end
  end
  