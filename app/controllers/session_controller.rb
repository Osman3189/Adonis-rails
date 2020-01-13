class SessionController < ApplicationController
  def new
  end

  def create
    user =User.find_by email: params[:email]

    if user.present? && user.authenticate( params[:password] )

      session[:user_id] = user.id

      redirect_to user_path(user.id)
    else

    flash[:error] = 'Invalid email or password'
    redirect_to login_path # show the form again

  end


  end

  def destroy
    session[:user_id] = nil # This logs out the user
    redirect_to login_path
  end


end
