class VacationsController < ApplicationController
  def index
    @vacations = if params[:user_id].present?
                   Vacation.all
                 else
                   Vacation.where(user_id: params[:user_id])
                 end
  end

  def new
    @vacation = Vacation.new
  end

  def create
    @vacation = Vacation.new vacation_params
    if @vacation.save
      flash[:success] = 'Vacation successfully created'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to vacations_path
  end

  def edit
    @vacation = Vacation.find(params[:vacation_id])
  end

  def update
    @vacation = Vacation.find(params[:vacation_id])
    if @vacation.update vacation_params
      flash[:success] = 'Vacation was successfully updated'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to vacations_path
  end

  def destroy
    @vacation = Vacation.find(params[:vacation_id])
    if @vacation.destroy
      flash[:success] = 'Vacation was successfully deleted.'
    else
      flash[:error] = 'Something went wrong'
    end
    redirect_to vacations_path
  end

  private

  def vacation_params
    params.require(:vacation).permit(:content)
  end
end
