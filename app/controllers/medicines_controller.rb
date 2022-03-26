class MedicinesController < ApplicationController
    before_action :set_all_medicine, only: [:index, :create]
    before_action :set_medecine, only: [:edit, :update]

    def index
        @medicine = Medicine.new
    end

    def edit
    end

    def update
        if @medicine.update(medicine_params)
            redirect_to medicines_url
        else
            render :edit
        end
    end

    def create
        @medicine = Medicine.new(medicine_params)

        if @medicine.save
            redirect_to medicines_url
        else
            render :index
        end
    end

    private

    def medicine_params
        params.require(:medicine).permit(:name, :price, :type_of)
    end

    def set_all_medicine
        @medicines = Medicine.all
    end

    def set_medicine
        @medicine = Medicine.find(params[:id])
    end
end
