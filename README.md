# CS-F214
Logic In Computer Science

This directory includes my assignments and practice for Logic In Computer Science Course offered at BITS-Pilani (2017-18).
I don't claim copyright of the problem statements and practice code provided in this Repository. Also the contents of this directory are not availible under any open source license. The solutions were a combined effort of Divesh Uttamchandani and Rahul Khapre. If you want to use the code in solutions please write to diveshuttamchandani@gmail.com

# Prolog Resources
The resources used for learning prolog for this assignment include:  
1. [IIT-KGP Nptel Course on AI - lectures 14 to 16](https://www.youtube.com/watch?v=iJhtgWAGUAQ)
2. [Derek Banas - Learn Prolog in one Video.](https://www.youtube.com/watch?v=SykxWpFwMGs)

# Important Notes
One of the key points about prolog is that the structure of a prolog program is fixed  
i.e
1. there is a OR between all the predicates listed.
2. there is an AND between the statements written within a predicate (MOSTLY).
3. there is a THERE EXISTS for a single predicate. i.e it returns true if it finds a single correct match.
4. there exists an FOR EVERY for the combination of all the predicates i.e all predicates are tested.
5. we can convert THERE EXISTS to FOR EVERY for a single predicates by using 2 NOT's. For details refer to the comments in the code.
6. there is an OR between various solution that prolog proposes.
