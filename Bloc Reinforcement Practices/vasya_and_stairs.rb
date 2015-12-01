def numberOfSteps(steps, m)

  return -1 if m>steps

  min = (steps+1)/2

  for i in min..steps+1
    return i if i%m == 0
  end

  return -1
end
