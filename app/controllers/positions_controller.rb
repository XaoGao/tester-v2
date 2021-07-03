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
      redirect_to positions_path, notice: "Добавлена позиция #{@position.name}"
    else
      redirect_to positions_path, alert: "Ошибка при добавлении позиции #{@position.name}"
    end
  end

  def update
    @position = Position.find(params[:id])
    if @position.update position_params
      redirect_to positions_path, notice: "Добавлена позиция #{@position.name}"
    else
      redirect_to positions_path, alert: "Ошибка при добавлении позиции #{@position.name}"
    end
  end

  private

  def position_params
    params.require(:position).permit(:name, :level, :lock)
  end
end
