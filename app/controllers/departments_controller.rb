class DepartmentsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_hr

  def index
    @departments = Department.all.order_by(:level)
  end

  def new
    @department = Department.new
  end

  def create
    @department = Department.new department_params
    if @department.save
      redirect_to departments_path, notice: "Добавлен отдел #{@department.name}"
    else
      redirect_to departments_path, alert: "Ошибка при добавлении отдела #{@department.name}"
    end
  end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.find(params[:id])
    if @department.update department_params
      redirect_to departments_path, notice: "Добавлен отдел #{@department.name}"
    else
      redirect_to departments_path, alert: "Ошибка при обновлений должности #{@department.name}"
    end
  end

  def destroy
    @department = Department.find(params[:id])
    if @department.delete
      redirect_to departments_path, notice: "Удален отдел #{@department.name}"
    else
      redirect_to departments_path, alert: "Ошибка при удалении отдела #{@department.name}"
    end
  end

  def toggle
    @department = Department.find(params[:id])
    if @department.toggle!
      flash[:notice] = "Обновилен статус #{@department.name}"
    else
      flash[:alert] = "Ошибка при обновлении статуса #{@department.name}"
    end
    redirect_to departments_path
  end

  private

  def department_params
    params.require(:department).permit(:name, :level, :lock)
  end
end
