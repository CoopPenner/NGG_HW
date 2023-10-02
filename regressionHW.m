
%HW3!

%ploteen

samp_data=[3	1.4
4	1.5
5	2.2
6	2.4
7	3.1
8	3.2
9	3.2
11	3.9
12	4.1
14	4.7
15	4.5
16	5.2
17	5.0];

mdl = fitlm(samp_data(:,1),samp_data(:,2)); % makin our model



%1. Plot the relationship between Age and Wing Length.

figure
scatter(samp_data(:,1),samp_data(:,2)) %plot w/ scatter
ylabel('wing length (miles')
xlabel('age (centuries)')
title('cretinous sea beast wing length')

% calculate and plot the regression line

plotregression(samp_data(:,1), samp_data(:,2))
% Can you reject the null hypothesis?
[r,p]=corrcoef(samp_data(:,1), samp_data(:,2))

%answer, yup we can, you can also just get this from the mdl variable ofc

% Calculate and plot the confidence intervals on the slope of the regression.
ci=coefCI(mdl);

% Calculate (the coefficient of determination)

r^2 %!

%calculate pearsons R, oy vey hope I'm not totally misunderstanding
r %!

% 7. Add some noise to the data and see how the regression changes.

%ook

randval= abs(randn( 1,length(samp_data)));

samp_data_2=samp_data; samp_data_2(:,2)=samp_data_2(:,2).*randval';


figure
scatter(samp_data_2(:,1),samp_data_2(:,2)) %plot w/ scatter
ylabel('wing length (miles')
xlabel('age (centuries)')
title('cretinous sea beast wing length')

% calculate and plot the regression line

plotregression(samp_data_2(:,1), samp_data_2(:,2))
% Can you reject the null hypothesis?
[r,p]=corrcoef(samp_data_2(:,1), samp_data_2(:,2))

