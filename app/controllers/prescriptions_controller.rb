class PrescriptionsController < ApplicationController
    before_action :set_doctor, only: [:index, :new, :create, :destroy]
    before_action :set_all_medicine, only: [:index, :new, :create]
    before_action :set_prescriptions, only: [:index, :destroy, :create]

    def index
        @prescription = @doctor.prescriptions.build
        @prescription.prescription_medicines.build
    end

    def new
    end

    def create
        @prescription = @doctor.prescriptions.build(prescription_params)
        Prescription = 
            Prescription w Id
            prescription w id nil

        if @prescription.save
            redirect_to doctor_prescriptions_url
        else
            render :index
        end
    end

    def destroy
        @prescription = @doctor.prescriptions.find(params[:id])
        @prescription.destroy
        redirect_to doctor_prescriptions_url
    end

    private

    def prescription_params
        params.require(:prescription).permit(:prescription_id, :title, prescription_medicines_attributes: [:id, :prescription_id, :medicine_id, :qty, :note, :unit, :price])
    end

    def set_doctor
        @doctor = Doctor.find(params[:doctor_id])
    end

    def set_all_medicine
        @medicines = Medicine.all
    end

    def set_prescriptions
        @prescriptions = @doctor.prescriptions.where.not(prescriptions: {id: nil})
    end
end
