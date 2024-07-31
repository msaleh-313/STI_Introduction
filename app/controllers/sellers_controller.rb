class SellersController < ApplicationController
  before_action :authenticate_user!
  before_action :authorize_seller!
  def index
  end

  def show
  end

  def new
  end

  def edit
  end

  private

  def authorize_seller!
    unless current_user.is_a?(Seller)
      flash[:alert] = "You are not authorized to access this page."
      redirect_to root_path
    end
  end
end
