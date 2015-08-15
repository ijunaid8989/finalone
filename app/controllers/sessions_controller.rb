class SessionsController < ApplicationController
  def index
  end
  def create
  	@user = User.authenticate(params[:username],params[:password])

  	if @user
  		redirect_to "/profile"
  		flash[:notice] = "In"
  	else
  		redirect_to "/profile"
  		flash[:notice] = "bahir"
  	end

  end
end
