class DoctorsController < ApplicationController
    before_action :set_doctor, only: [:show, :edit, :update, :destroy]
    before_action :set_doctors, :init_medicine, only: [:index, :create]
    before_action :init_doctor, only: [:index, :new]

    def index
    end

    def show
    end

    def new
    end

    def create
        @doctor = Doctor.new(doctor_params)

        if @doctor.save
            redirect_to doctors_url
        else
            render :index
        end
    end

    def edit
    end

    def update
        if @doctor.update(doctor_params)
            redirect_to doctors_url
        else
            render :edit
        end
    end

    def destroy
        @doctor.destroy
        redirect_to doctors_url
    end

    private

    def doctor_params
        params.require(:doctor).permit(:first_name, :last_name)
    end

    def set_doctor
        @doctor = Doctor.find(params[:id])
    end

    def set_doctors
        @doctors = Doctor.all
    end

    def init_medicine
        @medicine = Medicine.new
    end

    def init_doctor
        @doctor = Doctor.new
    end
end
