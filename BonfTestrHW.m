%bonferoni exercise


%First, simulate multiple (say, 1000)
% t-tests comparing two samples with equal means and standard deviations, 
% and save the p-values. Obviously, at p<0.05 we expect that ~5% of 
% the simulations to yield a "statistically significant" result (of rejecting the
% NULL hypothesis that the samples come from distributions with equal means).

%Second, once you have the simulated p-values, apply both methods to address the multiple comparisons problem.



sampMean1=1;
sampMean2=1;
sampSTD=.2;
alpha=0.05;
coolor='c';
CorrectionMakr(sampMean1,sampMean2, sampSTD, alpha,coolor)


%Third, set the sample 1 and sample 2 means to be 1 and 2 respectively, and re-run the exercise.
% What do you notice? 

figure
sampMean1=1;
sampMean2=2;
sampSTD=.2;
alpha=0.05;
coolor='m';
CorrectionMakr(sampMean1,sampMean2, sampSTD, alpha,coolor)

% What if you make the difference between means even greater?

figure
sampMean1=1;
sampMean2=5;
sampSTD=.2;
alpha=0.05;
coolor='g';
CorrectionMakr(sampMean1,sampMean2, sampSTD, alpha,coolor)
