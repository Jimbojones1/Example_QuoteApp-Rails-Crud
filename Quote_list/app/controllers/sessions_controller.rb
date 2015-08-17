class SessionsController < ApplicationController
  #get
  def login

  end

  #post
  def confirmation

    @user = User.find_by_email(params[:email])

    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/'
    else
      @message = 'User account or password invalid'
      render '/sessions/login'
    end
  end

  # get
  def logout
    #redirect back to login page and clear thier session
    session[:user_id] = nil
    redirect_to '/users/login'

  end
end
