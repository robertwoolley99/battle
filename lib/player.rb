class Player
  DEFAULT_HIT_POINTS = 60

  attr_reader :name, :hit_points

<<<<<<< HEAD
def initialize(name, hit_points = DEFAULT_HIT_POINTS)
  @name = name
  @hit_points = hit_points
end


def damage(amount)
  @hit_points -= amount
end


=======
  def initialize(name, hit_points = DEFAULT_HIT_POINTS)
    @name = name
    @hit_points = hit_points
  end

  def damage(amount)
    @hit_points -= amount
  end
>>>>>>> 5b90031596cb1530850cd0978e445f57c543125c
end
