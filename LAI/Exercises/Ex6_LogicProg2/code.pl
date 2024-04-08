wordtrans(casa,house,noun).
wordtrans(grande,big,adjective).
wordtrans(roja,red,noun).
wordtrans(roja,red,adjective).
wordtrans(marron,brown,adjective).
wordtrans(una,a,article).
wordtrans(la,the,article).
stop(vaca).
stop(foca).

% When both lists are empty, then it is finished
senttrans([],[]).
% If it's a stop word, immediately stop translation
senttrans([S|_], []) :- stop(S), !.
% In case of having a noun followed by an adjective, whitch them and go to the 
% next rule.
senttrans([S1, S2 | TS], [E2, E1|TE]) :- wordtrans(S1, _, noun), 
                                         wordtrans(S2, _, adjective),
   									     senttrans([S2, S1 |TS], [E2, E1|TE]),
    									 !.
% Check if there is a translation for each of the word and move forward.
senttrans([S|TS], [E|TE]) :- wordtrans(S, E, _), senttrans(TS, TE), !.
% Finally, it it is not a stopword and it is not in KB, then translate it as (?).
senttrans([_|TS], ["(?)"|TE]) :- senttrans(TS, TE).





