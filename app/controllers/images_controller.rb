class ImagesController < ApplicationController


	def index
		
	end

	def create
		unless params["/images"].nil?
			@image = Images.new(params["/images"])

			@image.user_id = current_user.id
			# @image.image = params["/images[image]"]
			@image.save
		end
		respond_to do |format|
			format.html
		end
	end

	def destroy
		@image = Images.find(params[:id])
		unless @image.nil?
			@image.destroy
			flash[:notice] = "Image deleted successfully"
		end

		respond_to do |format|
			format.html
		end
	end
end
