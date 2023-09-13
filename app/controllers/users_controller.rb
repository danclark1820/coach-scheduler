class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @upcoming_slots = Slot.where(coach: current_user)
  end
end
