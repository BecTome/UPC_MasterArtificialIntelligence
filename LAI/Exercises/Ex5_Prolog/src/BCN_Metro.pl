link(placasants, entenca, 4, blue).
link(entenca, hospitalclinic, 2, blue).
link(hospitalclinic, diagonal, 3, blue).
link(diagonal, verdaguer, 4, blue).
link(verdaguer, sagradafamilia, 5, blue).

link(palaureial, mariacristina, 2, green).
link(mariacristina, lescorts, 2, green).
link(lescorts, pcentre, 3, green).
link(pcentre, santsestacio, 3, green).
link(santsestacio, espanya, 2, green).
link(espanya, catalunya, 2, green).

link(espanya, placasants, 5, red).
link(espanya, rocafort, 3, red).
link(rocafort, urgell, 2, red).
link(urgell, universitat, 4, red).
link(universitat, catalunya, 4, red).


% Base Case: Every station is self-connected
connected(B, B).

connected(A, B) :-
    link(A, X, _, _),        % There is a link from A to X
    connected(X, B).         % X is connected to B

% Base case: If they are directly connected, 1 step
numberofsteps(A, B, 1) :-
    link(A, B, _, _).

numberofsteps(A, B, N):- 
     link(A, X, _, _),
     numberofsteps(X, B, P),
     N is P+1.

% Base Case: NO intermediate connection
routedistance(A, B, move(A, B, D), D) :-
    link(A, B, D, _).

routedistance(A, B, move(A, C, D1), D) :-
    link(A, Z, D1, _),
    routedistance(Z, B, C, D2),
    D is D1 + D2.

% Base Case: No intermediate connections
sameline(A, B, C) :-
    link(A, B, _, C).

sameline(A, B, C) :-
	link(A, X, _, C),
	sameline(X, B, C).
    
    
    
    

