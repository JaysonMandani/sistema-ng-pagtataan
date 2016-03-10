class MembersController < ApplicationController
  def index
  end

  def show
  end

  def edit
  end

  def update
  end

  def subscribe
    limit = current_member.subscriptions.where(date: Date.today)
    @schedule = Schedule.find params[:id]
    if limit.count >= 3
      if @schedule.date != Date.today
        Subscription.create(member_id: current_member.id, schedule_id: params[:id], date: @schedule.date)
        redirect_to root_path
        flash[:success] = "Successfully subscribe the lesson's schedule"
      else
        redirect_to root_path
        flash[:warning] = "You've reached the maximum limit of 3 subscriptions for today!"
      end
    else
      Subscription.create(member_id: current_member.id, schedule_id: params[:id], date: @schedule.date)
      redirect_to root_path
      flash[:success] = "Successfully subscribe the lesson's schedule"
    end
  end

  def unsubscribe
    @subscription = current_member.subscriptions.where(schedule: params[:id])
    @subscription.destroy_all
    redirect_to root_path
    flash[:success] = "Successfully unsubscribe the lesson's schedule"
  end
end
