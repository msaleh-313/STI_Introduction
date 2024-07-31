# frozen_string_literal: true

class Users::SessionsController < Devise::SessionsController
  # before_action :after_sign_in_params, only: [:create]

  def after_sign_in_path_for(resource)
    case resource.type
    when 'Admin' 
      admins_path
    when 'Seller'
      sellers_path
    when 'Buyer'
      buyers_path
    else
      super
    end
  end
end
