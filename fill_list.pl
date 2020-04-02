
antara(X,Y,X) :- X =< Y.
antara(X,Y,Res) :- X1 is X+1, X < Y, antara(X1,Y,Res).

list_angka(X,Y,D) :- list_angka(Y,X,[],D). 

list_angka(X,Y,D,Res) :- X1 is X-1,X > Y, H = X, list_angka(X1,Y,[H|D],Res).
list_angka(X,Y,D,Res) :- X is Y, H = X, Res = [H|D]. 