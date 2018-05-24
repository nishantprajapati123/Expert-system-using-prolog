
go:-
    writeln('My chess solving expert system'),
    writeln('******* An AL3 Expert System for plan refinement in chess problem solving******* '),
        writeln('****************************Nishant Prajapati,Chinmay Ranjan Behera,Swostik Acharya*************************** '),
        writeln('**********************************716CS2054,716CS2050,716CS2049******************************* '),
    writeln(''),
    writeln('1. There is a hypothesis H, that a plan P succeeds'),
    writeln('2. There are 2 hypotheses,'),
    writeln('   H1, that a plan R1 refutes plan P, and'),
    writeln('   H2, that a plan R2 refutes plan P.'),
    writeln('...................................................'),
    writeln("Does hypothesis H exist (1-yes/0-no)?"),
    readln(Reply1),
    writeln("Is hypothesis H1 false (1-yes/0-no)?"),
    readln(Reply2),
    writeln("Is hypothesis H2 false (1-yes/0-no)?"),
    readln(Reply3),
    writeln('The replies:'),
    write('Reply1:-'),writeln(Reply1),write('Reply2:-'),writeln(Reply2),write('Reply3:-'),writeln(Reply3),
    call(hyp(Reply1,Reply2,Reply3)),again.
fact_H3():-

    writeln('H3 implies not(H)'),
    again.

% ............................Inference-Engine............................%
hyp(Reply1,Reply2,Reply3):-
((Reply1=:=1),(Reply2=:=1),(Reply3=:=1)) ->
  (call(hypothesis_H3()))
;   (writeln('Nothing can be inferred')).
hypothesis_H3():-
    writeln('Combined plan R1 or R2 refutes plan P'),
    call(fact_H3()).
again:-
        write('do you want to continue(y/n)'),
        response(R), R='y',
        go,
        again.
again:-
        write('ok bye.'),nl.

