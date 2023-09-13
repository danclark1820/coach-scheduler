class SlotsController < ApplicationController
  before_action :authenticate_user!

  def index
    @slots = Slot.all#where(student: nil, booking greater then now)
  end
end
