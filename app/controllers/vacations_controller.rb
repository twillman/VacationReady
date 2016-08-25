class VacationsController < ApplicationController
  def new
    @vacation = Vacation.new
  end

  def create
    @vacation = Vacation.create(params[:vacation].permit!)
    redirect_to user_path(current_user.id)
  end

  def show
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
