class VacationsController < ApplicationController
  after_action  :create_deadlines, only: [:create]

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

  def create_deadlines
    @dl1 = @vacation.deadlines.create :task => "6 months out: Book your hotel", :due_date => (@vacation.date - 6.months), :status => "incomplete", :vacation_id => @vacation.id
    @dl2 = @vacation.deadlines.create :task => "180 days out: Book your dining", :due_date => (@vacation.date - 180.days), :status => "incomplete", :vacation_id => @vacation.id
    @dl3 = @vacation.deadlines.create :task => "90 days out: Book your flights", :due_date => (@vacation.date - 90.days), :status => "incomplete", :vacation_id => @vacation.id
    @dl4 = @vacation.deadlines.create :task => "31 (Or 61 days out for WDW Resort Guests): Purchase your park tickets", :due_date => (@vacation.date - 61.days), :status => "incomplete", :vacation_id => @vacation.id
    @dl5 = @vacation.deadlines.create :task => "30 (0r 60 days out for WDW Resort Guests): Make your Fastpass+ reservations", :due_date => (@vacation.date - 60.days), :status => "incomplete", :vacation_id => @vacation.id
    @dl6 = @vacation.deadlines.create :task => "31 days out: Finalize any Magic Band customizations", :due_date => (@vacation.date - 30.days), :status => "incomplete", :vacation_id => @vacation.id
    @dl1.save
    @dl2.save
    @dl3.save
    @dl4.save
    @dl5.save
    @dl6.save
  end
end
