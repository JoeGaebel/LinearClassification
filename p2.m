function [err,CONF] = p2(C,T)
err_num = length(find(C - T));
err = err_num / length(C);

number_of_classes = max(T);
CONF = zeros(number_of_classes);

for i = 1:size([C,T], 1)
    CONF(C(i),T(i)) = CONF(C(i),T(i)) + 1;
end
end