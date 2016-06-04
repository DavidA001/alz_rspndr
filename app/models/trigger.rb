class Trigger
  attr_accessor :current_heart_rate
  attr_accessor :current_steps

  def current_is_over_baseline?
    current_steps > steps_baseline || current_heart_rate > heart_rate_baseline
  end

  def heart_rate_baseline
    120
  end

  def steps_baseline
    0
  end

  #NOTE: Couldn't find a defined Fitbit API call for blood pressure
  # def blood_pressure_baseline

  # end
end
