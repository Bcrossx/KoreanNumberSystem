% Phonetics - Phone definitions
% ** Note that numbers correspond to unicode indices

:- ['fulldisplay.pl']. /* chains to this program (not very important
				just formatting)*/
/* for hw1 we could just do stuff like
phone([s]).
cns([s]).
*/

phone(A):-
	name(A,[112]).

phone(A):-
	name(A,[098]).

phone(A):-
	name(A,[109]).

phone(A):-
	name(A,[116]).

phone(A):-
	name(A,[100]).

phone(A):-
	name(A,[110]).

phone(A):-
	name(A,[107]).

phone(A):-
	name(A,[103]).

phone(A):-
	name(A,[331]).

phone(A):-
	name(A,[102]).

phone(A):-
	name(A,[118]).

phone(A):-
	name(A,[952]).
 
phone(A):-
	name(A,[240]).
 
phone(A):-
	name(A,[115]).

phone(A):-
	name(A,[122]).

phone(A):-
	name(A,[643]).

phone(A):-
	name(A,[658]).
 
phone(A):-
	name(A,[269]).

phone(A):-
	name(A,[496]).

phone(A):-
	name(A,[108]).

phone(A):-
	name(A,[633]).

phone(A):-
	name(A,[106]).

phone(A):-
	name(A,[119]).

phone(A):-
	name(A,[104]).

phone(A):-			%i
	name(A,[105]).

phone(A):-			
	name(A,[618]).%I

phone(A):-			%e
	name(A,[101]).

phone(A):-			%ae
	name(A,[230]).

phone(A):-
	name(A,[117]).	%u

phone(A):-
	name(A,[650]).	%horshoe
 
phone(A):-
	name(A,[111]).	%o

phone(A):-
	name(A,[097]).	%a
 
phone(A):-
	name(A,[601]).	

phone(A):-
	name(A,[652]).	%^
