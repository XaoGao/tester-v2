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
      flash[:notice] = "Добавлен отдел #{@department.name}"
    else
      flash[:alert] = "Ошибка при добавлении отдела #{@department.name}"
    end
    redirect_to departments_path
  end

  def edit
    @department = Department.find(params[:id])
  end

  def update
    @department = Department.find(params[:id])
    if @department.update department_params
      flash[:notice] = "Добавлен отдел #{@department.name}"
    else
      flash[:alert] = "Ошибка при обновлений должности #{@department.name}"
    end
    redirect_to departments_path
  end

  def destroy
    @department = Department.find(params[:id])
    if @department.delete
      flash[:notice] = "Удален отдел #{@department.name}"
    else
      flash[:alert] = "Ошибка при удалении отдела #{@department.name}"
    end
    redirect_to departments_path
  end

  def toggle
    @department = Department.find(params[:id])
    if @department.toggle!
      flash[:notice] = "Обновлен статус #{@department.name}"
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
