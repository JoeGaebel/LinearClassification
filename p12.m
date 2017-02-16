function C = p12(competition_x)
    load('A1_full.mat');
    
    alpha = 0.01;
    iterNum = 100;
    
    Xamples = [X_train_full; X_test_full];
    trueClass = [Y_train_full; Y_test_full];
    
    numberOfClasses = max(trueClass);
    numberOfColumns = size(Xamples, 2) + 1;
    Winit = randn(numberOfClasses, numberOfColumns);
    W = p9(Xamples, trueClass, iterNum, Winit, alpha);

    Ctrain = p7(W, Xamples);
    C = p7(W, competition_x);

    [train_err, ~] = p2(Ctrain, trueClass);
    
end