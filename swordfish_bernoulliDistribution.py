#https://www.sciencedirect.com/science/article/pii/S0960982216315251#fig2
#This is a cool current bio paper showing lateralized action in swordfish... they watched schools of swordfish for THREE YEARS to generate this


#This isn't a bernoulli distribution but if we just treat all right as 0 and all left as 1 we can make it work
import random as rnd
from scipy.stats import bernoulli

# In Python we can use random, which produces a random variable on the interval
#   [0,1), which means that all values are greater than or equal to 0 and less
#   than 1. This function is park of the "random" package imported above as "rnd".
p = 0.7 # choose value for p
single_outcome_method_1 = rnd.random() < p # create logical variable from single pick
print(f"outcome using rand = {single_outcome_method_1}") # print the result

# Or, equivalently, use bernoulli, which is a function in scipy.stats that
#   generates a random pick from a Bernoulli distribution.
# Choose value for p
p = 0.7
# Generate a single sample using the rvs ("random variates") method.
#   To generate >1 sample, use the size argument
single_outcome_method_2 = bernoulli.rvs(p, size=1)
# Print the output
print(f'outcome using binornd = {bool(single_outcome_method_2)}')

# Now generate lots of Bernoulli trials to check if it is converging on the
#   appropriate probability
# Choose value for p
p = 0.7
# Number of Bernoulli trials to simulate
N = 10000
# Use the size argument to generate outcomes (an ndarray) from lot of trials
outcomes = bernoulli.rvs(p, size=N)
type(outcomes)
print(f'{(outcomes == False).sum()} zeros, {(outcomes == True).sum()} ones, simulated p = {(outcomes == True).sum()/outcomes.size}, empirical p = {p}')