class SamplesController < ApplicationController
	def index
		@samples = Sample.all
	end
end
