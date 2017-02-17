function C = runSoftmaxOnCompetitionData(competition_x)
    load('A1_full.mat');
    
    alpha = 0.01;
    iterNum = 100;
    
    Xamples = [X_train_full; X_test_full];
    trueClass = [Y_train_full; Y_test_full];
    
    numberOfClasses = max(trueClass);
    numberOfColumns = size(Xamples, 2) + 1;
    Winit = randn(numberOfClasses, numberOfColumns);
    W = softmaxWeightTrain(Xamples, trueClass, iterNum, Winit, alpha);

    Ctrain = multiClassLinearClassifier(W, Xamples);
    C = multiClassLinearClassifier(W, competition_x);

    [train_err, ~] = benchmarkClassification(Ctrain, trueClass);
    fromMatrixToCVS(C,'classified_samples')
end