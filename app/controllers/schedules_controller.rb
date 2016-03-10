class SchedulesController < ApplicationController

  def index
    @q = Schedule.ransack(params[:q])
    @schedules = @q.result.includes(:teacher).page(params[:page]).per(5)
  end

  def show
  end

  def edit
  end

  def update
  end

  def create
  end

  def new
  end

  def destroy
    @schedule = Schedule.find params[:id]
    @schedule.destroy
    flash[:success] = "Successfully deleted #{@schedule.date.to_date.strftime("%B %d, %Y")}"
    redirect_to root_path
  end

end
