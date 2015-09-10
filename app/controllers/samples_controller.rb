class SamplesController < ApplicationController
	def index
		@samples = Sample.all
	end

	def create
		@sample = Sample.create(sample_params)
		if @sample.invalid?
			flash[:error] = '<strong>Could not add empty Comment.</strong>'
		end
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
