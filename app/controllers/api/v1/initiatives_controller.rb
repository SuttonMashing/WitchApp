class InitiativesController < ApplicationController
    def index
        @initiatives = Initiative.all
        render json: @initiatives
    end

    def show
        @initiatives = Initiative.find(params[:id])
        render json: @initiatives
    end

    def create
        @initiatives = Initiative.new(user_params)
        if @initiatives.save
            render json: @initiatives
        else 
            render error: {error: 'Unable to create encounter.'}, status: 400
        end
    end

    def update 
        @initiatives = Initiative.find(params[:id])
        if @initiatives
            @initiatives.update(user_params)
            render json: {message: "Updated successfully"}, status: 200
        else 
            render error: {error: 'Unable to update encounter.'}, status: 400
        end
    end

    def delete
        @initiatives = Initiative.find(params[:id])
        if @initiatives
            @initiatives.destroy
            render json: {message: "Deleted encounter successfully"}, status: 200
        else
            render error: {error: "Unable to delete encounter"}, status: 400
        end
    end 
end
