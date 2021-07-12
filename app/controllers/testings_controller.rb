class TestingsController < ApplicationController
  before_action :authenticate_doctor
  def go_to_test
    @patient = Patient.find_by(id: params[:patient_id])
    if @patient.nil? || @patient.blank? || !current_user.patients.include?(@patient)
      redirect_to root_path, alert: 'Нет указанного пациента нет в списке доступных'
    end
    @tests = Test.all
  end

  def new
    @patient = Patient.find_by(id: params[:patient_id])
    if @patient.nil? || @patient.blank? || !current_user.patients.include?(@patient)
      redirect_to root_path, alert: 'Нет указанного пациента нет в списке доступных'
    end

    @test = Test.includes(questions: [:answers]).find_by(id: params[:test_id])
    if @test.blank?
      redirect_to root_path, alert: 'Нет указанного теста'
    end
    @testing = Testing.new(doctor_id: current_user.id, test_id: @test.id, patient_id: @patient.id)
  end

  def create
    @patient = Patient.find_by(id: params[:patient_id])
    if @patient.nil? || @patient.blank? || !current_user.patients.include?(@patient)
      redirect_to root_path, alert: 'Нет указанного пациента нет в списке доступных'
    end

    @test = Test.find_by(id: params[:testing][:test_id])
    if @test.nil?
      redirect_to root_path, alert: 'Нет указанного теста'
    end
    @testing = Testing.new(doctor_id: current_user.id, test_id: @test.id, patient_id: @patient.id)

    if @testing.save
      params[:testing].except(:test_id).each do |question_answer|
        QuestionAnswer.create(question_id: question_answer[0], answer_id: question_answer[1], patient_id: @patient.id, testing: @testing)
      end
    end
    redirect_to root_path
  end
end
