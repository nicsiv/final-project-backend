class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, except: [:created_at, :updated_at]
    end

    def show
        user = User.find_by_id(params[:id])
        render json: user.to_json(include: [:furnitures], except: [:created_at, :updated_at])
    end

    def create
        user = User.new(username: params[:username], password: params[:password])
       
        if user.save 
            render json: user, except: [:created_at, :updated_at]
        else 
            render json: {error: user.errors.full_messages}
        end
    end
    
    def update
        user = User.find_by_id(params[:id])
        if user.update(user_params)
            render json: user
        else 
            render json: {error: user.errors.full_messages}
        end
    end

    def destroy
        user = User.find_by_id(params[:id])
        if user.destroy
            render json: user
        else
            render json: {error: "Something went wrong, cannot delete user."}
        end
    end

    private 

    def user_params
        params.require(:user).permit(:username, :password)
    end
end
