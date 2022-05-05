class Api::V1::DownfallcitizensController < ApplicationController
    def index
        @downfallcitizens = DownfallCitizen.all
        render json: @downfallcitizens
    end

    def show
        @downfallcitizens = DownfallCitizen.find(params[:id])
        render json: @downfallcitizens
    end

    def create
        @downfallcitizens = DownfallCitizen.new(user_params)
        if @downfallcitizens.save
            render json: @downfallcitizens
        else 
            render error: {error: 'Unable to create citzen.'}, status: 400
        end
    end

    def update 
        @downfallcitizens = DownfallCitizen.find(params[:id])
        if @downfallcitizens
            @downfallcitizens.update(user_params)
            render json: {message: "Updated successfully"}, status: 200
        else 
            render error: {error: 'Unable to update citizen.'}, status: 400
        end
    end

    def delete
        @downfallcitizens = DownfallCitizen.find(params[:id])
        if @downfallcitizens
            @downfallcitizens.destroy
            render json: {message: "Deleted citizen successfully"}, status: 200
        else
            render error: {error: "Unable to delete citizen"}, status: 400
        end
    end 
end
