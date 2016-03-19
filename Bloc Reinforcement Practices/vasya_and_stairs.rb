# Description:
#
# Vasya wants to climb up a stair of certain amount of steps (Input parameter 1). There are 2 simple rules that he has to stick to.
#
# Vasya can climb 1 or 2 steps at each move.
# Vasya wants the number of moves to be a multiple of a certain integer. (Input parameter 2).
# Task:
#
# What is the MINIMAL number of moves making him climb to the top of the stairs that satisfies his conditions?
#
# Input
#
# Number of stairs: 0 < N ≤ 10000 ;
# Integer to be multiplied : 1 < M ≤ 10;
# Output
#
# Return a single integer - the minimal number of moves being a multiple of M;
# If there is no way he can climb satisfying condition return - 1 instead.

def numberOfSteps(steps, m)

  return -1 if m>steps

  min = (steps+1)/2

  for i in min..steps+1
    return i if i%m == 0
  end

  return -1
end
