class ImagesController < ApplicationController
    def new
        #render plain: params[:image].inspect
        @image = Image.new images_params
        @image.save

        #redirect_to @image  #redirecciona a una nueva vista

    end
end
