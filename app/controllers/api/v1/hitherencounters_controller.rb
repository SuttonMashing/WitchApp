class Api::V1::HitherencountersController < ApplicationController
    def index
        @hitherencounters = Hither_Encounter.all
        render json: @hitherencounters
    end

    def show
        @hitherencounters = Hither_Encounter.find(params[:id])
        render json: @hitherencounters
    end

    def create
        @hitherencounters = Hither_Encounter.new(user_params)
        if @hitherencounters.save
            render json: @hitherencounters
        else 
            render error: {error: 'Unable to create encounter.'}, status: 400
        end
    end

    def update 
        @hitherencounters = Hither_Encounter.find(params[:id])
        if @hitherencounters
            @hitherencounters.update(user_params)
            render json: {message: "Updated successfully"}, status: 200
        else 
            render error: {error: 'Unable to update encounter.'}, status: 400
        end
    end

    def delete
        @hitherencounters = Hither_Encounter.find(params[:id])
        if @hitherencounters
            @hitherencounters.destroy
            render json: {message: "Deleted encounter successfully"}, status: 200
        else
            render error: {error: "Unable to delete encounter"}, status: 400
        end
    end 
end
