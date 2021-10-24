class ApplicationController < ActionController::Base
  if Time.now.hour > 12
    @hour = Time.now.hour - 12
  else
    @hour =Time.now.hour
  end

  @minutes = Time.now.min
end
