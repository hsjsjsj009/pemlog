
panjang([],0).
panjang([_|Tail],X) :- panjang(Tail,Y), X is 1+Y.

tambahSatu([],[]).
tambahSatu([Head|Tail],[NewHead|Y]) :- tambahSatu(Tail,Y), NewHead is Head+1.

jumlahIsi([],0).
jumlahIsi([Head|Tail],X) :- jumlahIsi(Tail,Y), X is Head+Y.

minimum([Head|Tail],Min) :- minimum(Tail,Head,Min).

minimum([],Min,Min).
minimum([Head|Tail],MinTemp,Min) :- Min1 is min(MinTemp,Head), minimum(Tail,Min1,Min).

statistik(List,Min,Avg) :- minimum(List,Min), jumlahIsi(List,Y), panjang(List,X), Avg is Y/X.

horner(_,[],0).
horner(_,[Head],Head).
horner(X,[Head1,Head2|Tail],Z) :- Y is Head1*X+Head2, horner(X,[Y|Tail],Z).

indexKe([Head|Tail],Idx,Res) :- panjang([Head|Tail],Length), indexKe([Head|Tail],Idx,Res,Length,0).

indexKe([Head],Idx,Res,Length,Counter) :- Length is Counter+1, Res = Head, Idx = Counter.
indexKe([Head|_],Idx,Res,_,Counter) :- Idx = Counter, Res = Head.
indexKe([_|Tail],Idx,Res,Length,Counter) :- Idx \= Counter, Y is Counter+1, indexKe(Tail,Idx,Res,Length,Y).


scalarMult(_,[],[]).
scalarMult(X,[Head|Tail],[NewHead|Y]) :- scalarMult(X,Tail,Y), NewHead is Head*X.

dot([],[],0).
dot([Head|Tail],[Head1|Tail1],Res) :- dot(Tail,Tail1,X), Res is Head*Head1+X. 

antara(X,Y,X) :- X =< Y.
antara(X,Y,Res) :- X1 is X+1, X < Y, antara(X1,Y,Res).

kuadratUnik(A) :- antara(32,99,A), Y is A**2, Puluhan is Y mod 100, Ribuan is Y//100, A is Puluhan + Ribuan.