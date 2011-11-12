function [M]=genBM(n)
l=((n*n+1)*n*n)/2;
M=zeros(1,l);
w=1;
for i=n:-1:1
    for s=n:-1:1
        %A part
        M(w)=4; w=w+1;
        if(s~=1)
            M(w)=-1;
            w=w+1;
        end
        if((s-2)>0), w=w+(s-2); end
        %B part
        if(i>1)
            w=w+(n-s);
            M(w)=-1;
            w=w+(s-1);
        end
        if((i-2)>0), w=w+(i-2)*n+1; end
    end
end