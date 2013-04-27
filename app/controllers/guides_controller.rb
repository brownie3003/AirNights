class GuidesController < ApplicationController
	def index
		if params[:location]
			@guides = Guide.find(:all, conditions: ['location LIKE ?', "%#{params[:location]}%"])
		else
			@guides = Guide.all
		end
	end

	def show
		@guide = Guide.find(params[:id])
	end

	def new
		@guide = Guide.new
	end

	def create 
		@guide = Guide.new(guide_params)
		if @guide.save
			redirect_to guide_path(@guide)
		else
			render 'new'
		end
	end

	private

		def guide_params
			params.require(:guide).permit!
		end
end
