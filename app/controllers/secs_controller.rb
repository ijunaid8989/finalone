class SecsController < ApplicationController
  def index
  	@sec = Sec.new
  	@level = Level.all
  end

  def create
  	@sec = Sec.new(sec_params)

  	if @sec.save
  		redirect_to "/setupclass"
  	end
  end

 private

 def sec_params
 	params.require(:sec).permit(:name,:level_id)
 end
end
