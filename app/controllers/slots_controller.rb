class SlotsController < ApplicationController
  before_action :authenticate_user!

  def index
    @slots = Slot.where(student: nil)
  end

  def update
    @slot = Slot.find(params[:id])
    @slot.student = current_user
    @slot.save
    redirect_to slots_path
  end

  def create
    start_time = DateTime.parse(params[:booking])
    end_time = ((start_time).to_time + 2.hours).to_datetime
    @slot = Slot.new(coach: current_user, booking: start_time..end_time)
    @slot.save
  end

  private
  def slot_params()
    params.require(:slot).permit(:student, :coach, :booking)
  end
end
