class DistrictsController < ApplicationController
    before_action :get_district, only: [:show, :edit, :update]
    
    def index
        @districts = District.all
    end

    def show
    end

    def edit

    end

    def new
        @district = District.new
    end

    def create
        @district = District.new(district_params)

        if @district.save
            redirect_to district_path(@district)
        else
            render :new
        end
    end

    def update
        district_params.each do |attribute, value|
            @district.send("#{attribute}=", value)
        end

        if @district.save
            redirect_to district_path(@district)
        else
            render :edit
        end
    end

    private

    def district_params
        params.require(:district).permit(:name, :district_type)
    end

    def get_district
        @district = District.find(params.require(:id))
    end
end
