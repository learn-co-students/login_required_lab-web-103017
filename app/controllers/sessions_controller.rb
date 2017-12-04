class SessionsController < ApplicationController

  def new
  end

  def create
    if params[:name]==nil || params[:name].empty?
      redirect_to '/login'
    else
      # byebug
      session[:name] = params[:name]
      redirect_to '/'
    end
  end

  def destroy
    session.delete :name
    redirect_to '/login'
  end

  def secret
    return head(:forbidden) unless session.include? :name
  end

end
