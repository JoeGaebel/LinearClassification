function C = p4(w,X)
z = [ones(size(X,1),1), X];
C = z * w;
C(C >= 0) = 1;
C(C < 0) = 2;
end

