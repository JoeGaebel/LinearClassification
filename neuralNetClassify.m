function [err,CONF] = neuralNetClassify(X_test,Y_test, net)
% This method takes testing data and it's true class, and a neural net
% and runs classification on the net. It then returns the err and conf
% matrix

    % Change format of X_test
    X = transpose(X_test);

    % Classify the samples and get the error
    C = runNeuralClassification(net, X);
    [err, CONF] = benchmarkClassification(C, Y_test);
end