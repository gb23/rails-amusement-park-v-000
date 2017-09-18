class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user),
        else
            redirect_to '/users/new'
        end
    end

    def show
        
    end

    private

    def user_params
        require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :admin)
    end
end