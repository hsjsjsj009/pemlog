horner(_,[],0).
horner(_,[Head],Head).
horner(X,[Head1,Head2|Tail],Z) :- Y is Head1*X+Head2, horner(X,[Y|Tail],Z).

antara(X,Y,X) :- X =< Y.
antara(X,Y,Res) :- X1 is X+1, X < Y, antara(X1,Y,Res).

getNumber([X1,X2,X3]) :-  antara(0,9,X1), antara(0,9,X2), antara(0,9,X3), X1 \= X2, X1 \= X3, X2 \= X3.

konversi(X,[X|_],[Head1|_],Head1).
konversi(X,[_|T],[_|T1],Res) :- konversi(X,T,T1,Res).

assign([],_,[]).
assign([Head|Tail],ConvertList,[Y|X]) :- assign(Tail,ConvertList,X), konversi(Head,[a,b,c],ConvertList,Y).

calculate(List,Res) :- horner(10,List,Res).

cryptadd(List,List1,List2,D1,D2,D3) :- getNumber(ConvertList), 
                                            assign(List,ConvertList,D1), 
                                            assign(List1,ConvertList,D2),
                                            assign(List2,ConvertList,D3),
                                            calculate(D1,Res1),
                                            calculate(D2,Res2),
                                            calculate(D3,Res3),
                                            Res3 is Res1 + Res2.

