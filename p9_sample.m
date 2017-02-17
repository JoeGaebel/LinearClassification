X = [1 2; -1 4; 3 2; 1 7; 3 5; 4 6; 9 8]

%X =
% 
%      1     2
%     -1     4
%      3     2
%      1     7
%      3     5
%      4     6
%      9     8
%      

Y = [4; 1 ; 3; 2; 3; 3; 1]

% Y =
% 
%      4
%      1
%      3
%      2
%      3
%      3
%      1


iterNum = 1;
alpha = 0.1;
Winit = [ 1 2 -1; 1 2 -1;1 1 -2; -1 2 1]

% Winit =
% 
%      1     2    -1
%      1     2    -1
%      1     1    -2
%     -1     2     1


W = softmaxWeightTrain(X,Y,iterNum,Winit,alpha)
% 
% W =
% 
%     1.1287    2.5735   -0.0893
%     0.9724    1.7103   -0.8936
%     1.2022    1.1267   -1.4779
%    -1.3033    1.5896   -0.5392
