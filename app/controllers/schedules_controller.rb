class SchedulesController < ApplicationController
  before_filter :schedule

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
    @schedule.destroy
    flash[:success] = "Successfully deleted #{@schedule.date.to_date.strftime("%B %d, %Y")}"
    redirect_to root_path
  end

  private

  def schedule
    @schedule = Schedule.find params[:id]
  end
end
