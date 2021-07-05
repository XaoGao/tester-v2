class PhonesController < ApplicationController
  before_action :authenticate_user!
  before_action :authenticate_hr

  def index
    @phones = Phone.all.order_by(:number)
  end

  def new
    @phone = Phone.new
  end

  def create
    @phone = Phone.new phone_params
    if @phone.save
      redirect_to phones_path, notice: "Добавлен телефон #{@phone.number}"
    else
      redirect_to phones_path, alert: "Ошибка при добавлении телефона #{@phone.number}"
    end
  end

  def edit
    @phone = Phone.find(params[:id])
  end

  def update
    @phone = Phone.find(params[:id])
    if @phone.update phone_params
      flash[:notice] = "Обновлен телефон #{@phone.number}"
    else
      flash[:alert] = "Ошибка при обновлений телефона #{@phone.number}"
    end
    redirect_to phones_path
  end

  def destroy
    @phone = Phone.find(params[:id])
    if @phone.delete
      flash[:notice] = "Удален телефон #{@phone.number}"
    else
      flash[:alert] = "Ошибка при удалении телефона #{@phone.number}"
    end
    redirect_to phones_path
  end

  def toggle
    @phone = Phone.find(params[:id])
    if @phone.toggle!
      flash[:notice] = "Обновлен статус #{@phone.number}"
    else
      flash[:alert] = "Ошибка при обновлении статуса #{@phone.number}"
    end
    redirect_to phones_path
  end

  private

  def phone_params
    params.require(:phone).permit(:number, :lock)
  end
end
