jam(H_Start,M_Start,H_End,_, H_Start, M_Start) :- H_Start < H_End.
jam(H_Start,M_Start,H_End,M_End, H_Start, M_Start) :- H_Start = H_End, M_Start =< M_End.
jam(H_Start,M_Start,H_End,M_End, H_Res, M_Res) :- M_Start < 59, M_Temp is M_Start+1, jam(H_Start,M_Temp,H_End,M_End,H_Res,M_Res).
jam(H_Start,M_Start,H_End,M_End, H_Res, M_Res) :- M_Start is 59, H_Start < H_End, H_Temp is H_Start+1, jam(H_Temp,0,H_End,M_End,H_Res,M_Res).

