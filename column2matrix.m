function N=column2matrix(M)
    n=(-1+sqrt(1+8*length(M)))/2;
    N=zeros(n,n);
    w=1;
    for i=1:n
        N(i:n,i)=M(w:w+n-i);
        w=w+(n-i+1);
    end
end