/*from IIT-KGP AI Course Lectures 14, 15, 16 starting from https://www.youtube.com/watch?v=iJhtgWAGUAQ*/
/*operations on a list*/

conc([],L,L).
conc([X|L1],L2,[X|L3]):-conc(L1,L2,L3).

member(X,[X|_]).
member(X,[Head|Tail]):- member(X,Tail); member(X,Head).

% add a member to the begigining of the list
add(X,Tail,[X|Tail]).

% delete an element matching X from the list

del(X,[X|Tail],Tail).
del(X,[Y|Tail],[Y|Tail1]):-del(X,Tail,Tail1).

%delete all matching element X from the list

delall(_,[],[]).
delall(X,[X|Tail],Tail1):-delall(X,Tail,Tail1).
delall(X,[Y|Tail],[Y|Tail1]):- \+ X=Y ,delall(X,Tail,Tail1).

%this is not good in a sence that it will check but will not produce things
subset(S,L):- \+ (member(X,S),\+ member(X,L)).

%the concept of for every and there exist is used here. forevery X some P implies there doesnot exitst x for which ~p

% find if S is a sublist of L
sublist(S,L):- conc(_,L3,L),conc(S,_,L3).


% notset(S,L):- (member(X,S),\+member(X,L)).
% subset(S,L):- \+ notsublist(S,L).

%check if inserting x in y ccan give z
insert(X,Y,[X|Y]).
insert(X,[Y|Tail],[Y|Tail1]):-insert(X,Tail,Tail1).

% check if one is permutation of the other
permutation([],[]).
permutation([X|Tail],P):-permutation(Tail,L1),insert(X,L1,P).

% find the length of a list
length1([],0).
length1([_|Tail],N):-length1(Tail,Y), N is Y+1.
