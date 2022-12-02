%nr_aparitii(E:elem, L:list, R:integer)
%testeaza nr aparitii in L a lui E
nr_aparitii(_, [], 0).
nr_aparitii(E, [H|T], Nr1) :-
    H =:= E,!,
    nr_aparitii(E, T, Nr),
    Nr1 is Nr + 1.
nr_aparitii(E, [_|T], Nr) :-
    nr_aparitii(E, T, Nr).

%testeaza daca o lista este multime
%test_listIsSet(L:list, L_Init:list)
%(i, i)

test_listIsSet([], []).
test_listIsSet([], _):-!.
test_listIsSet([H|T], L) :-
    nr_aparitii(H, L, R),
    R =:= 1,!,
    test_listIsSet(T, L).
main_test_listIsSet(L) :-
    test_listIsSet(L, L).
