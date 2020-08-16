class PicturesController < ApplicationController

    def index
        @pictures = Picture.all 
        render json: @pictures
    end
    def show
        @pictures 
    end
    
end
