class SessionsController < ApplicationController
  def index
  end
  def create
  	@user = User.authenticate(params[:username],params[:password])

  	if @user
  		redirect_to "/profile"
  	else
  		redirect_to "/chal"
  	end

  end
end
