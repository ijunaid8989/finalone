class Level < ActiveRecord::Base
	has_many :subjects
	belongs_to :sec
end
