class FortunesController < ApplicationController

  def horoscopes
    @input_sign = params.fetch("sign")
    all_zodiacs = Zodiac.list
    this_zodiac = all_zodiacs.fetch(@input_sign.to_sym)
    @horoscope = this_zodiac.fetch(:horoscope)  
    # @horoscope = "As your professional dreams unfold, Aries, you may worry about the downside. First, there are new responsibilities that you might doubt your ability to fulfill. Second, you might be catapulted into an uncomfortable new realm of office politics. Don't let these matters put a damper on your enthusiasm. You have what it takes to fulfill the first concern and the wisdom to avoid the second.
    #  Onward and upward."
    
    @array_of_numbers = Array.new

    5.times do
      another_number = rand(1...100)
      
      @array_of_numbers.push(another_number)
    end
    render({ :template => "all_zodiac_templates/sign_info.html.erb" })
  end

end