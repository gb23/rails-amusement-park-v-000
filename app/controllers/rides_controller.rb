class RidesController < ApplicationController

    def new
binding.pry
        attraction_id: params[attraction_id]
        user_id: params[current_user.id]
    end
end