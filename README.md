# CS-F214
Logic In Computer Science

This directory includes my assignments and practice for _Logic In Computer Science_ Course offered at _BITS-Pilani (2017-18)_.
I don't claim copyright of the problem statements and practice code provided in this Repository. Also the contents of this directory are **not** availible under any open source license.  
The solutions were a combined effort of Divesh Uttamchandani and Rahul Khapre. If you want to use the assignment code in this repository, please write to diveshuttamchandani@gmail.com

# Resources
##  Prolog 
The resources used for learning prolog for the assignment include:  
1. [IIT-KGP Nptel Course on AI - lectures 13 to 15](https://www.youtube.com/watch?v=jySpg72Vbc4) \[VIDEO]
2. [Derek Banas - Learn Prolog in one Video.](https://www.youtube.com/watch?v=SykxWpFwMGs) \[VIDEO]

## Logic
1. [Stanford Intro to Logic](http://intrologic.stanford.edu/lessons/lessons.html) \[TEXT]

# Important Notes
## Prolog
- One of the key points about prolog is that it is a declarative programming language, and control flow of the program is pre-specified. If we draw the flowchart for a prolog program we will get an And-Or tree.  
i.e
  1. there is a OR between all the predicates listed.
  2. there is an AND between the statements written within a predicate (MOSTLY).
  3. there is a THERE EXISTS within a single predicate. i.e it returns true even if it finds a single correct match of all statements within a predicate
  4. there is a FOR EVERY between the overall predicates i.e all predicates are tested even after a matching predicate is found.
  5. we can convert THERE EXISTS to FOR EVERY for a single predicates by using 2 NOT's. For details refer to the comments in the code. (Though this is easy to code but makes the predicate only good for checking and not good for producing results -  related to P vs NP another way to achieve FOR EVERY is to use recurrsion)
  6. there is an OR between various solution that prolog proposes.

## Logic
- Logic in CS is a meta level course, we are doing proofs about proofs. Keeping this in mind makes the learning process quite easier.
