function [err,CONF] = benchmarkClassification(C,T)
% This method compares a 2 or more classification result C
% To its associated TrueClass T

% returns the error rate as defined by number of errors/number of samples
% and the Confusion Matrix, by which element (i, j) is the 
% number of times class i was mistaken as class j
% with the correct classifications appearing on the diagonal

    err_num = length(find(C - T));
    err = err_num / length(C);

    number_of_classes = max(T);
    
    % I believe this is broken.
    CONF = zeros(number_of_classes);
    for i = 1:size([C,T], 1)
        CONF(C(i),T(i)) = CONF(C(i),T(i)) + 1;
    end
end