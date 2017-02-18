function [net,valErr] = trainNeuralNet(X,Y, H, regularizerWeight)
    %Initialize the neural net
    net = patternnet(H);
    
    % Set the amount of samples to be tested at 0 (cause we're training)
    net.divideParam.testRatio = 0;
    
    % Set validation to 30% and training to 70% of samples
    net.divideParam.valRatio = 0.3;
    net.divideParam.trainRatio = 0.7;
    
    % Set regularizer weight
    net.performParam.regularization = regularizerWeight;
    
    % Change data into expected form
    Xt = transpose(X);
    Yt = transformY(Y);
    
    % Call built-in matlab neural network train function
    [net,tr] = train(net,Xt,Yt);
    
    % Get validation samples
    valInds = tr.valInd;
    X_val = Xt(:, valInds);
    Y_val = Y(valInds);
    
    % Oh god why
    X_val = transpose(X_val);
    
    % Classify the samples and get the error
    [valErr,~] = neuralNetClassify(X_val,Y_val, net);
    
    function Y = transformY(Y)
        Y = transpose(Y);
        numberOfClasses = max(Y);
        empty = zeros(numberOfClasses, size(Y, 2));
        
        for i=1:size(Y, 2)
            empty(Y(i), i) = 1;
        end
        Y = empty;
    end
end