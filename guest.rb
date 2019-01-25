class Guest
  attr_reader :name, :skills, :fav, :money

  def initialize(name, skills, fav, money)
    @name = name
    @skills = skills
    @fav = fav
    @money = money
  end


end
