class PagesController < ApplicationController


  def home
    @time_phrase =  @minutes.to_s + " past " + @hour.to_s + " it is."
    @filepath = "/assets/nl_recordings/nl_recordings/" + @hour.to_s + "_" + @minutes.to_s + ".mp3"
  end

  def yoda
    @current_hour =  Time.now.hour

    if @current_hour > 12
      @hour_twelve = @current_hour - 12
    else
      @hour_twelve = @current_hour
    end

    if Time.now.min.between?(0, 2)
      @minutes = 0
      @hour = @hour_twelve
    elsif Time.now.min.between?(3, 7)
      @minutes = 5
      @hour = @hour_twelve
    elsif Time.now.min.between?(8, 12)
      @minutes = 10
      @hour = @hour_twelve
    elsif Time.now.min.between?(13, 17)
      @minutes = 15
      @hour = @hour_twelve
    elsif Time.now.min.between?(18, 22)
      @minutes = 20
      @hour = @hour_twelve
    elsif Time.now.min.between?(23, 27)
      @minutes = 25
      @hour = @hour_twelve
    elsif Time.now.min.between?(28, 32)
      @minutes = 30
      @hour = @hour_twelve
    elsif Time.now.min.between?(33, 37)
      @minutes = 25
      @hour = @hour_twelve + 1
    elsif Time.now.min.between?(38, 42)
      @minutes = 20
      @hour = @hour_twelve + 1
    elsif Time.now.min.between?(43, 47)
      @minutes = 15
      @hour = @hour_twelve + 1
    elsif Time.now.min.between?(48, 52)
      @minutes = 10
      @hour = @hour_twelve + 1
    elsif Time.now.min.between?(53, 57)
      @minutes = 5
      @hour = @hour_twelve + 1
    elsif Time.now.min.between?(58, 59)
      @minutes = 5
      @hour = @hour_twelve + 1
    end

    if Time.now.min > 30
      @time_phrase = @minutes.to_s + " past " + @hour.to_s + " it is."
    else
      @time_phrase = @minutes.to_s + " past " + @hour.to_s + " it is."
    end

    @filepath = "/assets/yoda/" + @hour_twelve.to_s + "_" + @minutes.to_s + ".mp3"
  end
end
