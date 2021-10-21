class PagesController < ApplicationController
  def home
    if Time.now.hour > 12
      @hour = Time.now.hour - 12
    else
      @hour =Time.now.hour
    end

    @minutes = Time.now.min

    @time_phrase = "It's " + @minutes.to_s + " minutes past " + @hour.to_s + " o'clock"
    @filepath = "/assets/nl_recordings/nl_recordings/" + @hour.to_s + "_" + @minutes.to_s + ".mp3"
  end

  def french

  end
end
