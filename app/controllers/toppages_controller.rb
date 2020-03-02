class ToppagesController < ApplicationController
  before_action :require_user_logged_in, only: [:index]
  
  def index
    if logged_in?
      @task = current_user.tasks.build  # form_with 用
      @tasks = current_user.tasks.order(id: :desc).page(params[:page]).per(5)
    end
  end
  
  
end