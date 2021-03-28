class FurnituresController < ApplicationController

        def index
            @furnitures = Furniture.all
            render json: @furnitures
        end
    
        def show
            @furniture = Furniture.find(params[:id])
            render json: @furniture
        end
        
        def create
            @furniture = Furniture.new(furniture_params)
    
        if @furniture.save
          render json: @furniture, status: :created, location: @furniture
        else
          render json: @furniture.errors, status: :unprocessable_entity
        end
        end
    
        def update
            @furniture = Furniture.find(params[:id])
            @furniture.update(furniture_params)
            render json: @furniture
        end
    
        def destroy
            furniture = Furniture.find(params[:id])
            @furniture.destroy
            render json: @furniture
        end
    
        private
    
    
        def furniture_params
            params.require(:furniture).permit(:id, :name, :room, :store, :image :user_id)
        end
    
end
