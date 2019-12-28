class BuildingsController < ApplicationController
    before_action :get_building, only: [:show, :edit, :update]


    def index
        @buildings = Building.all
    end

    def show

    end

    def new
        @building = Building.new
    end

    def create
        @building = Building.new(building_params)

        if @building.save
            redirect_to building_path(@building)
        else
            render :new
        end
    end

    def edit

    end

    def update
        building_params.each do |attribute, value|
            @building.send("#{attribute}=", value)
        end

        if @building.save
            redirect_to building_path(@building)
        else
            render :edit
        end
    end

    private

    def building_params
        params.require(:building).permit(:name, :owner, :leasee, :district_id)
    end

    def get_building
        @building = Building.find(params.require(:id))
    end
end
