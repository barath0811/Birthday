class ImagesController < ApplicationController

	def new
		respond_to do |format|
			format.html
		end
	end
	
	def create
		unless params["/images"].nil?
			@image = Images.new(params[:images])

			@image.user_id = current_user.id
			@image.image = params["/images[image]"]
		end
		respond_to do |format|
			if @image.save
				format.js 
			else
				format.json { render json: @image.errors, status: :unprocessable_entity }
			end
		end
	end

	def destroy
		@image = Image.find(params[:id])
		@image.destroy
		flash[:notice] = "Image deleted successfully"

		respond_to do |format|
			format.js
		end
	end
end
