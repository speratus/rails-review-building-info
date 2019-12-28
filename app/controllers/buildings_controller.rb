class BuildingsController < ApplicationController
    before_action :get_building, only: [:show]


    def index
        @buildings = Building.all
    end

    def show

    end

    private

    def get_building
        @building = Building.find(params.require(:id))
    end
end
