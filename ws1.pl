ganjil(s(a)).
ganjil(s(s(X))) :- ganjil(X).

jumlah(a,L,L).
jumlah(s(X),Y,s(Z)) :- jumlah(X,Y,Z).

kebalikan([],[]).
kebalikan([Head|Tail],X) :- kebalikan(Tail,T1),append(T1,[Head],X).

terakhir(List,Y) :- kebalikan(List,[Y|_]).

terakhir_rec([Head],Head).
terakhir_rec([_|Tail],Y) :- terakhir_rec(Tail,Y).
 
palindrom(X) :- kebalikan(X,X).

lshift([Head|Tail],Y) :- append(Tail,[Head],Y).  

rshift(List,Y) :- kebalikan(List,[Head|Tail]),kebalikan(Tail,Tail_Rev),append([Head],Tail_Rev,Y).

duplikat([Head],[Head,Head]).
duplikat([Head|Tail],Y) :- duplikat(Tail,T1),append([Head,Head],T1,Y).

mem(a).

non_member(_,[]).
non_member(X,[Head|Tail]) :- non_member(X, Tail), X \= Head .

hapus(_,[],[]).
hapus(List,[Head|Tail],R) :- member(Head,List), hapus(List,Tail,R).
hapus(List,[Head|Tail],R) :- non_member(Head,List), append([Head],X,R), hapus(List,Tail,X).


konversi(X,[X|_],[Head1|_],Head1).
konversi(X,[Y|T],[_|T1],Res) :- konversi(X,T,T1,Res).