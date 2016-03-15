class GalleriesController < ApplicationController
    before_action :find_gallery, only: [:show, :destroy, :edit, :update]
	

	def index
	end

	def new
		@gallery = current_user.galleries.build
	end

	def create
		@gallery = current_user.galleries.build(gallery_parameters)
		if @gallery.save
			
			redirect_to root_path

		else
			
			raender "new"
		
		end		
	end

    def show
       @gallery = Gallery.find(params[:id])
    end

    def edit

    end

    def update
    	if @gallery.update(gallery_parameters)
    		redirect_to gallery_path
    	else
    		render "edit"
    	end
    end

    def destroy
    	@gallery.destroy
    	redirect_to root_path
    end

	private

	def gallery_parameters
		params.require(:gallery).permit(:name)
	end

	def find_gallery
		
		@gallery = Gallery.find(params[:id])

	end

end
