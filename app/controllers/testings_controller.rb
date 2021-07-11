class TestingsController < ApplicationController
  before_action :authenticate_doctor
  def go_to_test
    @patient = Patient.find_by(id: params[:patient_id])
    if @patient.nil? || !current_user.patients.include?(@patient)
      redirect_to root_path, alert: 'Нет указанного пациента нет в списке доступных'
    end
    @tests = Test.all
  end

  def new
    @patient = Patient.find_by(id: params[:test_id])
    if @patient.nil? || !current_user.patients.include?(@patient)
      redirect_to root_path, alert: 'Нет указанного пациента нет в списке доступных'
    end

    @test = Test.find_by(id: params[:test_id])
    if @test.nil?
      redirect_to root_path, alert: 'Нет указанного теста'
    end
    @testings = Testing.new(doctor_id: current_user.id, test_id: @test.id, patient_id: @patient.id)
  end

  def create
    # @patient = Patient.find_by(id: params[:test_id])
    # if @patient.nil? || !current_user.patients.include?(@patient)
    #   redirect_to root_path, alert: 'Нет указанного пациента нет в списке доступных'
    # end

    # @test = Test.find_by(id: params[:test_id])
    # if @test.nil?
    #   redirect_to root_path, alert: 'Нет указанного теста'
    # end
    # @testings = Tesings.new
  end
end
