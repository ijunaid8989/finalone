class SessionsController < ApplicationController

  def index
  	if current_user
  		redirect_to "/dashboard"
  	end
  end
  def create
  	@user = User.authenticate(params[:username],params[:password])

  	if @user
  		session[:user_id] = @user.id
  		redirect_to "/dashboard"
  		flash[:notice] = "In"
  	else
  		redirect_to "/profile"
  		flash[:notice] = "bahir"
  	end
  end

  def destroy
  	session[:user_id] = nil
  	redirect_to root_url, :notice => "logout ho gea hai"
  end
end
