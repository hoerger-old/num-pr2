function N=column2symmatrix(M)
    Z = column2Umatrix(M);
    N=Z+(Z'-diag(diag(Z)));
end