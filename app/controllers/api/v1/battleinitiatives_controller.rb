class Api::V1::BattleInitiativesController < ApplicationController
    def index
        @battleinitiatives = BattleInitiative.all
        render json: @battleinitiatives
    end

    def show
        @battleinitiatives = BattleInitiative.find(params[:id])
        render json: @battleinitiatives
    end

    def create
        @battleinitiatives = BattleInitiative.new(user_params)
        if @battleinitiatives.save
            render json: @battleinitiatives
        else 
            render error: {error: 'Unable to create encounter.'}, status: 400
        end
    end

    def update 
        @battleinitiatives = BattleInitiative.find(params[:id])
        if @battleinitiatives
            @battleinitiatives.update(user_params)
            render json: {message: "Updated successfully"}, status: 200
        else 
            render error: {error: 'Unable to update encounter.'}, status: 400
        end
    end

    def delete
        @battleinitiatives = BattleInitiative.find(params[:id])
        if @battleinitiatives
            @battleinitiatives.destroy
            render json: {message: "Deleted encounter successfully"}, status: 200
        else
            render error: {error: "Unable to delete encounter"}, status: 400
        end
    end 
end
