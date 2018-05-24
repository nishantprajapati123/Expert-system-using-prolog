%user_shell
begin :-
        writeln('****************** A MYCIN Expert System for Medical Diagnosis*********************** '),
        writeln('#####################Nishant Prajapati,Chinmay Ranjan Behera,Swostik Acharya############################## '),
        writeln('#####################716CS2054,716CS2050,716CS2049######################################## '),
        writeln('Enter the patient name?'),
        readln(Patient),
        writeln('Enter the age of the patient'),
        readln(Age),
        writeln('Enter the gender of the patient'),
        readln(Gender),
        writeln('Welcome'),
        write(Patient),write('---'),write(Gender),write('---'),write(Age),nl,
        expertsystem(Patient,Disease),
        write(Patient),write('probably has 0.7 Certainty Factor chance of'),write(Disease),nl,
        writeln('Medical Treatment: Patients are adviced to take'),
        write('Penicilin, Cephalosporins, Carbapenems, Chloramphenicol, Macrolides, Clindamycin, Metronidazole, Tetracyclines, Tigecycline and Quinolones.'),nl,
        writeln('Thank you to visit this Medical System'),
        again.

    begin :-
        write('It can be said with 0.3 CF(Certainty Factor) that the bacteroides '),nl,
        write('have not entered the patient'),nl,
        writeln('Thank you to visit this Medical System'),
        again.

    %inference_engine
    symptom(Patient,primary_inf) :-
        write("Does "),write(Patient),write(" have a primary infection (yes/no) ?"),nl,
        response(Reply),
        Reply='yes'.

    symptom(Patient,bacterial_inf) :-
        write("Does "),write(Patient),write(" have a bacterial infection (yes/no) ?"),nl,
        response(Reply),
        Reply='yes'.

    symptom(Patient,culture_site) :-
        write("Does "),write(Patient),write(" having the infection, the site of culture is one of the sterilesites (yes/no) ?"),nl,
        response(Reply),
        Reply='yes'.

    symptom(Patient,entry_portal):-
        write("Does "),write(Patient),write(" having the infection, have the suspected portal of entry of the organism as gastrointestinal tract (yes/no) ?"),nl,
        response(Reply),
        Reply='yes'.

    %knowledge_base
    expertsystem(Patient,bacteroides) :-
        symptom(Patient,primary_inf),
        symptom(Patient,bacterial_inf),
        symptom(Patient,culture_site),
        symptom(Patient,entry_portal).

    response(Reply) :-
        read(Reply),
        writeln(Reply).
again:-
        write('do you want to continue(y/n)'),
        response(R), R='y',
        begin,
        again.
again:-
        write('ok bye.'),nl.











































