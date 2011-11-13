function N=column2symmatrix(M)
    Z = column2Umatrix(M);
    N=Z+Z';
    N=N-diag(diag(N).*(0.5));
end