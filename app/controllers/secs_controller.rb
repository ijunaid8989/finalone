class SecsController < ApplicationController
  def index
  	@sec = Sec.new
  	@level = Level.all
  end

  def create
  	@sec = Sec.new(params[:name],params[:level_id])

  	if @sec.save
  		redirect_to "/setupclass"
  	end
  end
end
