class UsersController < ApplicationController

  #get
  def signup

    #render  a view and let user register a new account


  end

  # post
  def confirmation


    @user = User.new(user_params)
    if @user.save
      session[:user_id] = @user.id

      #Quote.where(:user_id => session[:username])
    else
      @message = 'User account exists or passwords do not match'
      render 'users/signup'
    end

  end

private

    def user_params
      params.require(:user).permit(:username, :email, :password, :password_confirmation)
    end

end
