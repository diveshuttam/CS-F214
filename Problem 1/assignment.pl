/*
Prolog Assignment 2017-18
Question 1: Checking Group and abelian.
Authors:
2016A7PS0045P - Divesh Uttamchandani
2016A7PS0124P - Rahul Khapre
*/

/*
in/2 is the membership predicate - Ele is a Member of S
*/
in(Ele,[Ele|S_Tail]).
in(Ele,[S_Head|S_Tail]):-
in(Ele,S_Tail).

/*
closed/2 predicate - S is closed under OP
we use the relation between for every and there exist to define closed.
as in prolog the variables within a predicate are existencially quantified
we use \+ twice to ensure universal quantification.

The complexity of this will depend on how does prolog matches and exaust
all predicates. Though we think it should be O(N*3).
*/
closed(S,OP):-
\+
(
in(X,S),
in(Y,S),
\+
(in([X,Y,Res],OP),
in(Res,S))
).

/*
commutative/2 - OP is commutative under S 
commutative_for_each/3 does the main work ,ensures foreach part by recursion.
*/
commutative_for_each(S,OP,[]).
commutative_for_each(S,OP,[OP_Begin_ele|OP_Tail]):-
[OP_Begin_ele1,OP_Begin_ele2,OP_Begin_res] = OP_Begin_ele,
in([OP_Begin_ele2,OP_Begin_ele1,OP_Begin_res],OP),
commutative_for_each(S,OP,OP_Tail).

commutative(S,OP):-
commutative_for_each(S,OP,OP).

/*
Associative/2 - OP is associative under S
we define not_associative/2 first to avoid the confusion
as we are using the relation between for every and there exist again.
Similar to the predicate closed.

The complexity of this will depend on how does prolog matches and exausts
all predicates. Though we think it should be O(N*3)
*/
not_associative(S,OP) :- 
in([A,B,X],OP),in([X,C,Result1],OP),
in([B,C,Y],OP), in([A,Y,Result2],OP),
\+(Result1=Result2)
.

associative(S,OP) :- \+ (not_associative(S,OP)).

/*
identity/3 - ID is identity element for S,OP
identity_for_each/4 ensures the for each part
i.e identity element should be the same for all

[NOTE:
In actual usage of identity/3 we pass a variable as 3rd arg.
and prolog assigns the ID. 
(e.g. in group first find ID and then pass it to inverse.)
END_OF_NOTE]
*/
identity_for_each(S,OP,ID,[]).
identity_for_each(S,OP,ID,[S_Begin|S_Tail]):-
in([S_Begin,ID,S_Begin],OP),
in([ID,S_Begin,S_Begin],OP),
identity_for_each(S,OP,ID,S_Tail).

identity(S,OP,ID):-
identity_for_each(S,OP,ID,S).


/*
inverse/3 if each element in S,OP has a 
inverse for identity element ID
inverse_for_each/4 ensures the for each part

[NOTE: assuming associative,identity we have removed *1* below
to reduce complexity END_OF_NOTE]
*/

inverse_for_each(S,OP,ID,[]).
inverse_for_each(S,OP,ID,[S_Begin|S_Tail]):-
in([S_Begin,Y,ID],OP),
%in([Y,S_Begin,ID],OP), /*1*/
inverse_for_each(S,OP,ID,S_Tail).

inverse(S,OP,ID):-
inverse_for_each(S,OP,ID,S).


/*group/2 - S,OP form a group*/
group(S,OP):-
closed(S,OP),
associative(S,OP),
identity(S,OP,ID),
inverse(S,OP,ID).

/*abelian/2 - S,OP is abelian group
[NOTE: though this can be optimized a bit by changing closed/2 identity/2 
if we determine commutative first. but not that worth as improves only 
by a constant factor END_OF_NOTE]*/
abelian(S,OP):-
group(S,OP),
commutative(S,OP).
