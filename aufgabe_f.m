n=5;
E=eye(5)*5; r=ones(1,n); c=ones(n,1);
M=E; N=E;
M(1,:)=r; M(:,1)=c;
N(n,:)=r; N(:,n)=r;
M
N
%replace with own code
LM=chol(M,'lower')
LN=chol(N,'lower')