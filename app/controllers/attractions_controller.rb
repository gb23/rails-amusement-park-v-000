class AttractionsController < ApplicationController
    before_action :find_attraction, only: [:show, :edit, :update, :destroy]
    
    def index
        @attractions = Attraction.all
    end

    def show

    end

    private

    def find_attraction
        @attraction = Attraction.find(params[:id])
    end

end