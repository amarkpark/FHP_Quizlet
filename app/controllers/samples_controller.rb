class SamplesController < ApplicationController
	def index
		@samples = Sample.all
	end

	def new
		@sample = Sample.new
	end

	def create
		Sample.create(sample_params)
		redirect_to quiz2_path
	end

	def quiz1
	end

	def quiz2
		@samples = Sample.all
	end

	private

	def sample_params
		params.require(:sample).permit(:comment, :author, :email)
	end

end
