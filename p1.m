function [X_out,Y_out] = p1(X,Y, l1, l2)
   l1_rows = find(Y==l1);
   l2_rows = find(Y==l2);
   X_l1_rows = X(l1_rows,:);
   X_l2_rows = X(l2_rows,:);
   X_out = [X_l1_rows; X_l2_rows];
   
   if l1 > l2
       Y_out = [2.*ones(length(l1_rows), 1);  ones(length(l2_rows), 1)];
   else
       Y_out = [ones(length(l1_rows), 1); 2.*ones(length(l2_rows), 1)];
   end
end
