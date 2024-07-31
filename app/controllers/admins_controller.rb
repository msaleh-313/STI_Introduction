class AdminsController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_admin!

  

  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  private

  def authorize_admin!
    unless current_user.is_a?(Admin)
      flash[:alert] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end
end
