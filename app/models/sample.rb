class Sample < ActiveRecord::Base
	validates :comment, :presence => true
end
