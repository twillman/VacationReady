class VacationsController < ApplicationController
  def new
    @vacation = Vacation.new
  end

  def create
    @vacation = Vacation.create(params[:vacation].permit!)
    @vacation.save
    redirect_to user_path(current_user.id)
  end

  def show
    @vacation = Vacation.find(params[:id])
  end

  def edit
    @vacation = Vacation.find(params[:id])
  end

  def update
    @vacation = Vacation.find(params[:id])
    @vacation.assign_attributes(params.require(:vacation).permit!)
    @vacation.save
    redirect_to vacation_path(@vacation)
  end

  def destroy
  end
end
