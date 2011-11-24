% Eingabe: Symmetrische Matrix im Standardspaltenformat
% Ausgabe: Untere Dreiecksmatrix im Standardspaltenformat
function A=cholesky(A)
    l=length(A);
    % Groesze der Matrix im klassischen Format
    n=(-1+sqrt(1+8*length(A)))/2;
    % s speichert die Startposition der aktuellen Spalte
    s=1;
    % umgekehrte Iteration ueber die Spalten um immer die
    % Groesze der aktuellen Spalte zu kennen
    for k=n:-1:1
        A(s)=sqrt(A(s));
        for i=1:k-1
            A(s+i)=A(s+i)/A(s);
        end
        iw=s;
        % Umgekehrte Iteration wie bei k
        for i=k:-1:2
            iw=iw+i;
            % Indexverschiebung um Addition zu vereinfachen
            for j=0:i-2
                A(iw+j)=A(iw+j)-A(s+(k-i)+j+1)*A(s+k-i+1);
            end
        end
        s=s+k;
    end
end
