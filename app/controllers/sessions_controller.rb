class SessionsController < ApplicationController

  def log_in(email, password)
    @user = User.authenticate(email, password)
    if user
      session[:user_id] = @user.id
    else
      redirect_to user_path(@user)
    end
  end

  def log_out(@user)
    reset_session
  end
  
end
