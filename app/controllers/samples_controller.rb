class SamplesController < ApplicationController
	def index
		@samples = Sample.all
	end

	def new
		@sample = Sample.new
	end

	def create
		Sample.create(sample_params)
		redirect_to root_path
	end

	private

	def sample_params
		params.require(:sample).permit(:comment, :author, :email)
	end

end
