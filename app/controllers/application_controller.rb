class ApplicationController < ActionController::Base
  def after_sign_in_path_for(resource)
    binding.pry
    slots_path
  end

  def after_sign_ups_path_for(resource)
    slots_path
  end
end
