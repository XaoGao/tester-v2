class PatientsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_registrator

  def index
    @patients = Patient.includes(:current_doctor).all.order_by(:lock)
  end

  def new
    @patient = Patient.new
  end

  def create
    @patient = Patient.new patient_params
    if @patient.save
      flash[:notice] = "Добавлен пациент #{@patient.full_name}"
    else
      flash[:alert] = "Ошибка при добавлении пациента #{@patient.full_name}"
    end
    redirect_to patients_path
  end

  def edit
    @patient = Patient.find(params[:id])
  end

  def update
    @patient = Patient.find(params[:id])
    if @patient.update patient_params
      flash[:notice] = "Обновлены данные пациента #{@patient.full_name}"
    else
      flash[:alert] = "Ошибка при обновлении данных пациента #{@patient.full_name}"
    end
    redirect_to patients_path
  end

  def toggle
    @patient = Patient.find(params[:id])
    if @patient.toggle!
      flash[:notice] = "Заблкирован пациент #{@patient.full_name}"
    else
      flash[:alert] = "Ошибка при блкировки пациента #{@patient.full_name}"
    end
    redirect_to patients_path
  end

  private

  def patient_params
    params.require(:patient).permit(:first_name, :last_name, :middle_name, :document_number)
  end
end
