# Prolog Assignment

## Authors:
2016A7PS0045P Divesh Uttamchandani  
2016A7PS0124P Rahul Khapre  

## Question:
Assignment Problem 1  
Checking for Groups and Abelian Groups.  

## Top Level Predicates:
1. group(S,OP).  
    checks if S,OP forms a group.  
    - S is a list of set elements e.g. `[0,1]`.
    - OP is a list of triplets where each triplet is a list e.g. `[[0,0,1], [0,1,1], [1,0,0], [1,1,1]]`.
2. abelian(S,OP).  
    checks if S,OP is abelian group.  
    - S is a list of set elements e.g. `[0,1]`.
    - OP is a list of triplets where each triplet is a list e.g. `[[0,0,1], [0,1,1], [1,0,0], [1,1,1]]`.  
    
Description of other lower level predicates are provided as comments in the code.  


## Input format and Examples
1. `group([0,1],[[0,0,1], [0,1,1], [1,0,0], [1,1,1]]).`  
false.  

2. `abelian([0,1],[[0,0,1], [0,1,1], [1,0,0], [1,1,1]]).`  
false.  

3. `group([0,1],[[0,0,0], [0,1,1], [1,0,1], [1,1,0]]).`  
true  

4. `abelian([0,1],[[0,0,0], [0,1,1], [1,0,1], [1,1,0]]).`  
true  

5. `group([0,1,2] , [ [0,0,0], [0,1,1], [1,0,1], [1,1,2], [0,2,2], [2,0,2], [1,2,0], [2,1,0], [2,2,1] ]).`  
true  

6. `abelian([0,1,2] , [ [0,0,0], [0,1,1], [1,0,1], [1,1,2], [0,2,2], [2,0,2], [1,2,0], [2,1,0], [2,2,1]]).`  
true  

*NOTE1:*   
We assume input sets are VALID as defined by the following:  
  
The question states OP is *binary operation* on S,  
and we know *binray operation* is a *function* defined on *SxS* -> B,  
so the program assumes that.  
1. for all triplets `<X,Y,Res>` in OP, first two elements i.e X,Y
are in S (domain).
2. Also since it's a *function* ; ordered pair X,Y can't
occur more than once in OP.
In other words if `<X,Y,Res1>` and `<X,Y,Res2>` in OP then Res1 = Res2
3. For All the pair X,Y in S there should occur a `<X,Y,Res>` in OP.
  
We build upon this and check other properties.  
Though third requirement may be relaxed in some predicates.  
*END_OF_NOTE1*   
  
*NOTE2*  
The lower level predicates were written in following order:  
1. closed
2. associative
3. identity
4. inverse
5. commutative  
While defining later predicates we have assumed the previous ones hold so as to reduce compexity ;  
Though individual lower operations here may not be sound/complete if prior condition is false  
but as ultimate aim is group and abelian predicates which call lower predicates
 in this order only and are sound and complete.  
*END_OF_NOTE2*  
  
*NOTE3*  
In case of multiple output as prolog tries to match all the predicates,
take the OR of the outputs as is the convention in prolog.  
*END_OF_NOTE3*

