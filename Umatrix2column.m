function N=Umatrix2column(M)
    l=length(M);
    l2=(l*(l+1))/2;
    N=zeros(1,l2);
    for i=1:l
        p=l2-((l-i)*(l-i+1))/2;
        N(p-(l-i):p)=M(i:l,i)';
    end
end