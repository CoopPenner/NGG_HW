# Exercise #1: If someone gets a positive test, is it "statistically significant" at the p<0.05 level? Why or why not?

# The test would not be significant. The tests false positive rate is 0.05% which is the same as the significance level we're considering.
# we would expect frequent false positives relative to the incidence of HIV in Philly (0.01264 taken from https://map.aidsvu.org/map)


# Exercise #2 What is the probability that if someone gets a positive test, that person is infected? For this exercise, assume a range of priors (infection rates) from 0 to 1 in steps of 0.1.


#I know I implemented this in a ridiculous way... I don't understand why it's so hard to iterate over non integers in python,
# you have to download some specific package and then that didn't work......
#I will stick with Matlab in the future!
pData=0.05;
data_prob= 1/ ( (.0126*1000) + .05* (1000- (1000*.0126))) #incidence of HIV in Philly (0.01264 taken from https://map.aidsvu.org/map)
sick_prob= [0,.1,.2,.3,.4,.5,.6,.7,.8,.9,1] #,data_prob]
for infectionRate in sick_prob:
    TP= infectionRate
    FP= (1-infectionRate)*pData
    testLikelihood= TP/(TP+FP)
    print(testLikelihood)


