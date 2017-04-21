class SplitTemporaryVariable
  def initialize(primary_force, mass, delay, secondary_force)
    @primary_acc = primary_force / mass
    @delay = delay
    @secondary_acc = (primary_force + secondary_force) / mass
  end

  def distance_traveled(time)
    return calculate_primary_distance(time) unless time - @delay > 0
    calculate_primary_distance(time) + calculate_secondaly_distance(time)
  end

  private

  def calculate_distance(acc, time)
    0.5 * acc * time * time
  end

  def calculate_primary_distance(time)
    calculate_distance(@primary_acc, [time, @delay].min)
  end

  def calculate_secondaly_distance(time)
    @primary_acc * @delay * (time - @delay) + calculate_distance(@secondary_acc, time - @delay)
  end
end
