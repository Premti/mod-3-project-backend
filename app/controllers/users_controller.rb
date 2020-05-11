class UsersController < ApplicationController

    def index
        users = User.all
        render json: users, :include => [:name, :score], :except => [:updated_at, :created_at]
    end 

    def show
        users = User.find_by(id: params[:id])
        render json: users
      end

      def create
        user = User.find_or_create_by(name: user_params)
        render json: user
      end

      private
      def user_params
        params.require(:name)
      end
end
