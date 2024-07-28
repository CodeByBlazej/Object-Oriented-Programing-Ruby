class BaseballPlayer
  def initialize(hits, walks, at_bats)
    @hits = hits
    @walks = walks
    @at_bats = at_bats
  end

  def battling_average()
    return(@hits.to_f / @at_bats)
  end

  def on_base_percentage()
    return((@hits + @walks).to_f / @at_bats)
  end
end

player = BaseballPlayer.new(330, 110, 1125)

puts player.battling_average
puts player.on_base_percentage

