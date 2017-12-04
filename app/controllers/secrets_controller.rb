class SecretsController < ApplicationController

  def show
    if (current_user == nil) || (current_user.empty?)
      redirect_to controller: 'sessions', action: 'new'
    end
  end



end
