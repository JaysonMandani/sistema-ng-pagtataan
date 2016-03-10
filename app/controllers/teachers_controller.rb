class TeachersController < ApplicationController
  def index
    @schedules = current_teacher.schedules.group_by(&:daterange)
  end

  def show
  end
end
