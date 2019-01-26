class Guest
  attr_reader :name, :skills, :fav, :money

  def initialize(name, skills, fav, money)
    @name = name
    @skills = skills
    @fav = fav
    @money = money
  end

  def see_fav(playlist)
    if playlist.include?(@fav) == true
      return "Oh my days! #{@fav.title} is my JAM!"
    end
  end

  def sing
    @skills == true ? "La la laaaa..." : "Screeeeeech!..."
  end

  def pay_fee(fee)    # currently does 2 things, abstract
    if @money >= fee
      @money -= fee
      return fee
    else
      return false
    end
  end


end
