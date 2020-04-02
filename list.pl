anggota(X,[X|_]).
anggota(X,[_|Tail]) :- anggota(X,Tail).


tambah([],L,L).
tambah([H|T],L,[H|X]) :- tambah(T,L,X).