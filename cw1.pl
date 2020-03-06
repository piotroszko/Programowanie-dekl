% Program: klocki_5
% Baza danych dotyczaca ukladu klockow
% Definiowane predykaty:
% 	na/2
% 	pod/2
%	miedzy/3
% ===================================

% na(X,Y)
% opis: spelniony, gdy klocek X
% lezy na klocku Y
% ---------------------------------------na/2
	na(d,c).
	na(c,a). %fakty
	na(c,b).
% ---------------------------------------na/2


% pod(X,Y)
% opis: spelniony, gdy klocek X
% lezy pod klockiem Y
% ---------------------------------------pod/2
	pod(c,d):- %glowa reguly
		na(Y,X). %cialo:podcel1
% ---------------------------------------pod/2


% miedzy(X,Y,Z)
% opis: spelniony, gdy klocek Y
%  lezy miedzy X i Z
% ---------------------------------------miedzy/3
	miedzy(X,Y,Z):- %glowa reguly
		na(X,Y),    %cialo:podcel1
		na(Y,Z).	%cialo:podcel2
		
	miedzy(X,Y,Z):- %glowa reguly
		na(Z,Y),    %cialo:podcel1
		na(Y,X).	%cialo:podcel2
% ---------------------------------------miedzy/3

/* 
Informacje o programie:
Program sklada sie z 3 klauzul
Program zawiera 1 definicje predykatu na/2 (dwuargumentowy)
Definicja predykatu na/2 sklada sie z 3 klauzul ktore sa faktami.
*/

/* Sesja prologowa
1. Czy klocek d leży na klocku c? 
na(d,c).
true.
2. Czy klocek c leży na klocku a?
?- na(c,a).
true ;
false.
3. Czy klocek b leży na klocku c?
?- na(b,c).
false.
4. Jaki klocek leży na klocku c?
?- na(X,c).
X = d.
5. Na jakim klocku leży klocek c?
?- na(c,X).
X = a ;
X = b.
6. Para klocków (X,Y), taka że X leży na Y?
?- na(X,Y).
X = d,
Y = c ;
X = c,
Y = a ;
X = c,
Y = b.
7. Czy jakiś klocek leży na c?
?- na(_,c).
true.
8. Czy jakiś klocek leży pod klockiem c?
?- na(c,_).
true ;
true.
9. Między jakimi klockami leży klocek c?
?- na(X,c),na(c,Y).
X = d,
Y = a ;
X = d,
Y = b.
10. Jaki klocek leży między dwoma innymi klockami?
?- na(_,X),na(X,_).
X = c ;
X = c ;
false.
11.Czy jakis klocek lezy miedzy d i a.

!ZLE ZADANE PYTANIE!
?- na(d,_),na(_,c).
true.
!ZLE ZADANE PYTANIE!

12.
*/
