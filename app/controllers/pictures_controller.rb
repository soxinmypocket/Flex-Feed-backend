class PicturesController < ApplicationController

    def index
        @pictures = Picture.all 
        render json: @pictures
    end

    def show
        @picture = Picture.find(params[:id])
        render json: @picture
    end

    def showcomments
        @picture = Picture.find(params[:id])
        render json: @picture.comments
    end
    
    def update
        @picture = Picture.find(params[:id])
        @picture.update(picture_params)
        render json: @picture
    end

    def destroy
        @picture = Picture.find(params[:id])
        @picture.destroy
        render json: @picture
    end

    def increase
        @picture = Picture.find(params[:id])
        @picture.update(likes: @picture.likes + 1)
        render json: @picture
    end


     private

     def picture_params
         params.permit(:category, :image, :title, :description, :likes)
     end
    
end

