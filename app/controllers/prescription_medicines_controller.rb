class PrescriptionMedicinesController < ApplicationController
    before_action :set_doctor, only: [:index, :new, :create, :destroy]
    before_action :set_all_medicine, only: [:index]
    
    def index
        @total_cost = 0.0
        @prescription = @doctor.prescriptions.find(params[:prescription_id])
        @prescriptions = Prescription.find(params[:prescription_id])
        @medications = @prescriptions.prescription_medicines

        @medications.each do |medication|
            @total_cost += medication.medicine.price * medication.qty
        end
    end

    def new
        @prescription = Prescription.new
        @prescription_medicine = @prescription.prescription_medicines.build
    end

    def create
        @prescription = @doctor.prescriptions.find(params[:prescription_id])
        @hehe = @prescription.prescription_medicines.update(prescription_params)

        if @hehe
            redirect_to @hehe
        else
            @prescriptions = @doctor.prescriptions.where.not(prescriptions: {id: nil})
            render :index
        end
    end

    private

    def set_doctor
        @doctor = Doctor.find(params[:doctor_id])
    end

    def set_all_medicine
        @medicines = Medicine.all
    end

    def prescription_params
        params.require(:prescription).permit(:prescription_id, :title, prescription_medicines_attributes: [:id, :prescription_id, :medicine_id, :qty, :note, :unit, :price])
    end
end
