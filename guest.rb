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

  def pay_fee(amount)
    @money -= amount
    return amount
  end


end
