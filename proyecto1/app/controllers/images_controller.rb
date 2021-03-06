class ImagesController < ApplicationController
    before_action :set_image, only: [:show, :edit, :update, :destroy]

    def index
        @images = Image.all            # variable de tipo array @images
   end

    def new
        @image = Image.new            # variable de tipo array @images
    end
    
    # POST /images
    # POST /images.json
    def create
        #render plain: params[:image].inspect
        @image = Image.new images_params
        @image.save

        redirect_to @image  #redirecciona a una nueva vista
    end

    # GET /images/:id
    # GET /images.json
    def show
       # @image = Image.find params[:id]
    end

    # GET /images/:id
    # GET /images.json
    def edit
        #@image = Image.find params[:id]
    end

    # PUT /images/:id
    # PUT /images.jsone
    def update
        #@image = Image.find params[:id] # buscamos nuestro id del objeto imagen
        @image.update images_params 
        redirect_to @image
    end

    # DELETET /images/:id
    def destroy
        @image = Image.find params[:id]
        @image.destroy
        redirect_to images_path 
    end


    private
    
    def images_params
        params.require(:image).permit :description, :picture
    end 

    def set_image
        @image = Image.find params[:id]
    end
       
end
