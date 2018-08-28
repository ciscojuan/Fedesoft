class ImagesController < ApplicationController

    before_action :set_image, only: [:show, :edit, :update, :destroy]#CallBack
    
    def index
         @images = Image.all          # variable de tipo array @images
    end

    
    def new
        @image = Image.new
    end

#       Metodo CREAR
    def create 
        #render plain: params[:image].inspect
        @image = Image.new images_params
        @image.save

        redirect_to @image  #redirecciona a una nueva vista
    end
 #       Metodo MOSTRAR   
    def show
        
    end
 #       Metodo EDITAR   
    def edit
        
    end
 #      ACTUALIZAR
    def update
       
        @image.update images_params 
        redirect_to @image
    end
#       METODO DESTROY
    def destroy
        
        @image.destroy
        redirect_to images_path 
    end

    private
    
        def images_params 
            params.require(:image).permit(:description)
        end
        
        def set_image
         @image =Image.find params[:id]
        end
       
  
  
    
end
