% Set params
H = [100, 100];
regularizerWeight = 0.1;

% Train the neural net and output validation error
[net,valErr] = trainNeuralNet(X_train_full, Y_train_full, H, regularizerWeight);

% Classify test data
[err,CONF] = neuralNetClassify(X_test,Y_test,net);

valErr
err


% with H = 100, wR = 0.8
% valErr = 0.0560
% err = 0.0935

% with H = 100, 100, wR = 0.8
% valErr = 0.0500
% err = 0.0840

% with H = 1000, 100, 10, wR = 0.8
% valErr = 0.0760
% err = 0.1095

% ----------------

% with H = 100, wR = 0.1
% valErr = 0.0780
% err = 0.1060

% with H = 100, 100, wR = 0.1
% valErr = 0.0773
% err = 0.0995

% with H = 1000, 100, 10, wR = 0.1
% valErr = 0.0727
% err = 0.1045

% -------

% Using full data set and H = 100, 100, wR = 0.1
% valErr = 0.0300
% err = 0.0420

