class GuidesController < ApplicationController
	def new
		@guide = Guide.new
	end

	def create 
		@guide = Guide.new(guide_params)
		if @guide.save
			redirect_to root_path
		else
			render 'new'
		end
	end

	private

		def guide_params
			params.require(:guide).permit!
		end
end
