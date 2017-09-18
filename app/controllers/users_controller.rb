class UsersController < ApplicationController
    def new
        @user = User.new
    end

    def create
        binding.pry
    end

    private

    def user_params
        require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password)
    end
end