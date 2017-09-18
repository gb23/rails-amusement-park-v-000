class UsersController < ApplicationController
    before_action :find_user, only: [:show, :edit, :update, :destroy]
    def new
        @user = User.new
    end

    def create
        @user = User.new(user_params)
        if @user.save
            session[:user_id] = @user.id
            redirect_to user_path(@user)
        else
            redirect_to '/'
        end
    end

#     def edit
# binding.pry
#     end

    def update
        @user.


        notice:  "Thanks for riding the #{@attraction.name}!"
    end


    def show
        #@user is found from find_user method
        if session[:user_id] != @user.id
            redirect_to root_path
        end
    end

    private

    def find_user
        @user = User.find(params[:id])
    end

    def user_params
        params.require(:user).permit(:name, :height, :happiness, :nausea, :tickets, :password, :admin)
    end
end

