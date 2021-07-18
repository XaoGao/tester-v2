class MedicalRecordsController < ApplicationController
  def index
    @patient = Patient.find_by(id: params[:patient_id])
    if @patient.nil? || @patient.blank? || !current_user.patients.include?(@patient)
      redirect_to root_path, alert: 'Нет указанного пациента нет в списке доступных'
    end

    @mediacal_records = MedicalRecord.includes(:patient, :doctor).where(patient: @patient).order_by(:created_at)
  end

  def new
    @patient = Patient.find_by(id: params[:patient_id])
    if @patient.nil? || @patient.blank? || !current_user.patients.include?(@patient)
      redirect_to root_path, alert: 'Нет указанного пациента нет в списке доступных'
    end

    @mediacal_record = MedicalRecord.new(patient: @patient)
  end

  def create
    @patient = Patient.find_by(id: params[:patient_id])
    if @patient.nil? || @patient.blank? || !current_user.patients.include?(@patient)
      redirect_to root_path, alert: 'Нет указанного пациента нет в списке доступных'
    end

    @mediacal_record = MedicalRecord.new medical_record_params
    @mediacal_record.doctor = current_user
    @mediacal_record.patient = @patient
    if @mediacal_record.save
      flash[:notice] = 'Запись успешно добавлена'
    else
      flash[:alert] = 'Ошибка при добавлении записи'
    end

    redirect_to my_patients_path
  end

  private

  def medical_record_params
    params.require(:medical_record).permit(:content)
  end
end
