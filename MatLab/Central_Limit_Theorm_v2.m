%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% Central_Limit_Theorem_v2.m - Dr. Bucks - 1/26/2019
% Description: this script will demonstrate how adding additional samples
% sets will ultimately produce a normally distrubted set of data with mean
% equal to the mean of the original distribution and standard deviation
% equal to the orignal standard deviation divided by the sample size
% Note: special thinks to Dr. Ossman for creating the original code
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% clean up
clear all; close all; clc; commandwindow;
% seed random number generator
rng('shuffle');
% get information from user
u = input('Please provide the population mean: ');
s = input('Please provide the population standard deviation: ');
ss = input('Please enter the desired sample size: ');
ns = input('Please enter the number of samplings: ');
% generate random population data
ds = 1000000;
data = u + s*randn(1,ds);
% plot histogram of the data using 25 bins
subplot(3,1,1);
hist(data,25);
xlabel('Scores'); ylabel('Frequency'); title('Population Distribution')
xlim([u-4*s u+4*s]);
% pull sets of samples from population and animate the central limit
% theorem
for k = 1:ns
    % extract one sample from data set
    data_set = data(randperm(ds,ss));
    % Plot a histogram of the Sample Data using 10 bins
    subplot(3,1,2);
    hist(data_set,10);
    xlim([u-4*s u+4*s]);
    ylim([0,ss/2]);
    xlabel('Data Values'); ylabel('Frequency'); title(['Single Sample Distribution: n=',num2str(ss)]);
    % compute mean of current data set
    Means(k) = mean(data_set);
    % plot histogram of means
    subplot(3,1,3);
    hist(Means,25);
    xlim([u-4*s u+4*s]);
    ylim([0,ns/8]);
    xlabel('Sample Mean'); ylabel('Frequency'); title(['Distribution of Sample Means: ',num2str(k),' Samples of Size ',num2str(ss)])
    % pause for animation
    pause(0.1);
end
% Compute and output the statistics for the sample means and compare with 
% population data statistics
fprintf('\n~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~\n');
fprintf('Results:\n');
fprintf('Mean of the Population = %0.2f \n',mean(data));
fprintf('Mean of the Sample Means = %0.2f \n',mean(Means));
fprintf('Standard Deviation of the Population = %0.2f \n',std(data,1));
fprintf('Expected Standard Deviation of Sample Means = %0.2f \n',std(data,1)/sqrt(ss));
fprintf('Standard Deviation of Sample Means = %0.2f \n',std(Means));
    