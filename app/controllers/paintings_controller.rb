class PaintingsController < ApplicationController
	

	def create

		@gallery = Gallery.find(params[:gallery_id])
		@painting = @gallery.paintings.create(painting_parameters)

		if @painting.save
			redirect_to gallery_path(@gallery)
		else
			render "new"
		end

	end


	private

	def painting_parameters
		params.require(:painting).permit(:image)
	end
end