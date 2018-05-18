class SessionsController < ApplicationController
  def new
  end

  def create 
  	user = User.find_by(email: params[:session][:email])
  	if user && user.authenticate(params[:session][:password])
  		flash.now[:success] = "You are successfully logged in!"
  		log_in user
  		redirect_to user_path(user)
  	else
  		flash.now[:danger] = "There was a problem with our credentials."
  		render :new
  	end
  end

  def destroy 
  	current_user
  	log_out(current_user)
  	flash[:success] = "You've logged out."
  	redirect_to root_path

  end
end
