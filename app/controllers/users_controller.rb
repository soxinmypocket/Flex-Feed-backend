class UsersController < ApplicationController
    def index
        @users = User.all
        render json: @users
    end
    
    def show
        @user = Picture.find(params[:id])
        render json: @user
    end
    
    def new
        @user = User.create
        
    end

    def create 
        @user = User.create(user_params)
        render json: @user
    end

    def show

    end

    private

    def user_params
        params.permit(:name)
    end
end
