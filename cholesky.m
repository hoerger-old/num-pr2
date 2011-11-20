function A=cholesky(A)
    l=length(A);
    n=(-1+sqrt(1+8*length(A)))/2;
    s=1;
    for k=n:-1:1
        A(s)=sqrt(A(s));
        for i=1:k-1
            A(s+i)=A(s+i)/A(s);
        end
        iw=s;
        for i=k:-1:2
            iw=iw+i;
            for j=0:i-2
                A(iw+j)=A(iw+j)-A(s+(k-i)+j+1)*A(s+k-i+1);
            end
        end
        s=s+k;
    end
end