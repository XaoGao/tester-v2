class PositionsController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_hr

  def index
    @positions = Position.all.order_by(:level)
  end

  def new
    @position = Position.new
  end

  def create
    @position = Position.new position_params
    if @position.save
      redirect_to positions_path, notice: "Добавлена должжность #{@position.name}"
    else
      redirect_to positions_path, alert: "Ошибка при добавлении должность #{@position.name}"
    end
  end

  def edit
    @position = Position.find(params[:id])
  end

  def update
    @position = Position.find(params[:id])
    if @position.update position_params
      redirect_to positions_path, notice: "Добавлена должность #{@position.name}"
    else
      redirect_to positions_path, alert: "Ошибка при обновлений должности #{@position.name}"
    end
  end

  def destroy
    @position = Position.find(params[:id])
    if @position.delete
      redirect_to positions_path, notice: "Удалена должность #{@position.name}"
    else
      redirect_to positions_path, alert: "Ошибка при удалении должности #{@position.name}"
    end
  end

  def toggle
    @position = Position.find(params[:id])
    if @position.toggle!
      flash[:notice] = "Обновилен статус #{@position.name}"
    else
      flash[:alert] = "Ошибка при обновлении статуса #{@position.name}"
    end
    redirect_to positions_path
  end

  private

  def position_params
    params.require(:position).permit(:name, :level, :lock)
  end
end
