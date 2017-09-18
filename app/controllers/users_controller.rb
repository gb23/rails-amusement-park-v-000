class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
binding.pry
            redirect_to user_path(@user)
        
        else
            redirect_to '/users/new'
        end
    end

    def show
binding.pry
    end

    private

    def find_user
        @user = User.find_by(id: params[:id])
    end

    def user_params
        require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password)
    end
end