class VisionboardsController < ApplicationController
    def index
        @visionboards = Visionboard.all
        render json: @visionboards
    end
    
    def show
        @visionboard = Visionboard.find(params[:id])
        render json: @visionboard
    end
    
    def new
        @visionboard = Visionboard.create
    end

    def create 
        @visionboard = Visionboard.create(visionboard_params)
        render json: @visionboard
    end

    def edit

    end

    def update

    end

    private

    def visionboard_params
        params.permit(:title, :photo, :description, :author)
    end

end
