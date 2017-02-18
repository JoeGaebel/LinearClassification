function C = runNeuralNetOnCompetitionData(competition_x)
    load('A1_full.mat');
    H = [100, 100];
    regularizerWeight = 0.1;
    X_examples = [X_train_full; X_test_full];
    trueClass = [Y_train_full; Y_test_full];

    % Train the neural net and output validation error
    [net,valErr] = trainNeuralNet(X_examples, trueClass, H, regularizerWeight);
    valErr

    % Classify test data
    test_x = transpose(competition_x);
    C = runNeuralClassification(net, test_x);
    fromMatrixToCVS(C,'neural_classified_samples') 
end