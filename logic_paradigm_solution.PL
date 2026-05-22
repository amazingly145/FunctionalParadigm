%We checkk if the element is in the list
%Caso base cuando ya no tenemos mas elementos en la lista
mi_member(H, [H|_]).
mi_member(H, [_|T]) :-
    mi_member(H, T).

%Eliminamos duplicados
%Caso base, la lista esta vacia
elim_dup([], Cont, Cont).

% Segundo caso si el elemento ya se encuentra en la lista, lo ignoras
elim_dup([H|T], Cont, Res) :-
    mi_member(H, Cont),
    elim_dup(T, Cont, Res).

%Si no esta en el acumuladorr lo guardas
elim_dup([H|T], Cont, Res) :-
    \+ mi_member(H, Cont),
    elim_dup(T, [H|Cont], Res).

% Function 3
%La funncion principal
boy_or_girl(List, Answer) :-
    elim_dup(List, [], Unicos),
    length(Unicos, N),
    Residuo is N mod 2,
    (Residuo =:= 0 -> Answer = "CHAT WITH HER!" ; Answer = "IGNORE HIM!").

% Main predicate to read input and print output
main :-
    read_line_to_string(user_input, Line),
    atom_chars(Line, List),
    boy_or_girl(List, Answer),
    writeln(Answer).

% boy_or_girl([w,j,m,z,b,m,r], X).
% boy_or_girl([x,i,a,o,d,a,o], X).
% boy_or_girl([s,e,v,e,n,k,p,l,u,s], X).