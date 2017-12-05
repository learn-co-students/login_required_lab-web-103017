class SecretsController < ApplicationController
  before_action :require_login
  def show
    # if current_user != nil || current_user != ""
    #   redirect_to login_path
    # else
    # end
  end

  def require_login
    redirect_to login_path unless session.include? :name
  end
end
