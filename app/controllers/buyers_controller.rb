class BuyersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_buyer!
  def index
  end
  def show
  end
  def new
  end
  def edit
  end
  private
  def authorize_buyer!
    unless current_user.is_a?(Buyer)
      flash[:alert] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end
end
