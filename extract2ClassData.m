function [X_out,Y_out] = extract2ClassData(X,Y, l1, l2)
% This method takes examples (X) and true classes (Y)
% and returns those which match label 1 and label 2
% It then transforms the True Class such that:
% L1 -> class 1 and L2 -> class 2

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
