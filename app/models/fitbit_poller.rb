class FitbitPoller
  def poll
    data = get_data

    current_heart_rate = check_current_heart_rate(data)
    current_steps = check_current_steps(data)

    trigger = Trigger.new

    trigger.current_heart_rate = current_heart_rate
    trigger.current_steps = current_steps

    trigger
  end

  def get_data
    #@data ||= FitbitCall.new().call
  end

  def check_current_heart_rate(data)

  end

  def check_current_steps(data)

  end
end
