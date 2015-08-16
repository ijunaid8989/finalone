class LevelsController < ApplicationController
  def index
  	@level = Level.new
  	@subs = Subject.new
  end

  def create
  	@levelname = params.require(:level).permit(:name)
  	@leveling = Level.create!(@levelname)
  	@subjects = params.require(:subject).permit(:name)[:name]

  	@integsubs = @subjects.split(",")
  	if @leveling
  		@levelid = @leveling.id
  		@integsubs.each do |takes|
  			Subject.create!(name: takes , level_id: @levelid)
  		end
  		redirect_to "/setuplevel"
  	end

  end

end
