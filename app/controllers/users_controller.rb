class UsersController < ApplicationController
    
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            
        else

        end
    end

    private

    def user_params
        require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :admin)
    end
end