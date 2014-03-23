class AudiosController < ApplicationController


	def index
		
	end

	def create
		unless params["/audios"].nil?
			@audio = Audios.new(params["/audios"])

			@audio.user_id = current_user.id
			@audio.save
		end
		respond_to do |format|
			format.html
		end
	end

	def destroy
		@audio = Audios.find(params[:id])
		unless @audio.nil?
			@audio.destroy
			flash[:notice] = "Recording deleted successfully"
		end

		respond_to do |format|
			format.html
		end
	end
end
