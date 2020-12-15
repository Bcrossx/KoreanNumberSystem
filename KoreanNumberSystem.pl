% Korean number system
% Only works 1-10 rn
% Also needs to use IPA spelling

:- ['properties.pl'].


%% Defining Base Native Korean for numbers 1-99
korean([hana ],numeral,1,[number,unit,first, native]).
korean([dul ],numeral,2,[number,unit,nonfirst, native]).
korean([set ],numeral,3,[number,unit,nonfirst, native]).
korean([net ],numeral,4,[number,unit,nonfirst, native]).
korean([dasot ],numeral,5,[number,unit,nonfirst, native]).
korean([josot ],numeral,6,[number,unit,nonfirst, native]). % yosot
korean([ilgo ],numeral,7,[number,unit,nonfirst, native]).
korean([jodol ],numeral,8,[number,unit,nonfirst, native]). % yodol
korean([ahop ],numeral,9,[number,unit,nonfirst, native]).
korean([jol ],numeral,10,[number,ten,first, native]). % yol
korean([seumjun ],numeral,20,[number,ten,first, native]).
korean([sorjun ],numeral,30,[number,ten,first, native]). % soreun
korean([mahjun ],numeral,40,[number,ten,first, native]). % maheun
korean([swon ],numeral,50,[number,ten,first, native]).
korean([jsjun ],numeral,60,[number,ten,first, native]). % yesun
korean([Ilhjun ],numeral,70,[number,ten,first, native]). % ilheun
korean([jodjul ],numeral,80,[number,ten,first, native]). % yodeul
korean([ahjun ],numeral,90,[number,ten,first, native]). % aheun

%% Defining Base Sino Korean for 100-1000
korean([el ],numeral,1,[number,unit2,nonfirst, sino]). % il
korean([ee ],numeral,2,[number,unit2,first, sino]).
korean([sam ],numeral,3,[number,unit2,first, sino]).
korean([sa ],numeral,4,[number,unit2,first, sino]).
korean([o ],numeral,5,[number,unit2,first, sino]).
korean([jokrjok ],numeral,6,[number,unit2,first, sino]). % yokryok
korean([chIl ],numeral,7,[number,unit2,first, sino]).
korean([pal ],numeral,8,[number,unit2,first, sino]).
korean([ku ],numeral,9,[number,unit2,first, sino]).

korean([ship ],numeral,10,[number,ten2,first, sino]).
korean([b,[ae],k ],numeral,100,[number,hundred,first, sino]).
% 999 = ku + baek + ku + ship + ku
korean([chon ],numeral,1000,[number,thousand,first, sino]).

%% Native Korean System (1-99)
% This gives us the numbers inbetween tens (1-9,11-19,...)
korean(A,numeral,B,[number]):-
    korean(C,numeral,D,[_,ten,_,native]),
    korean(E,numeral,F,[_,unit,_,native]),
    append(C,E,A), % ten + unit
    B is D + F,
    B < 100.

% All native tens
korean(C,numeral,D,[number]) :-
    korean(C,numeral,D,[_,ten,first,native]).

%% Sino Korean System (100-1000)
% For the unique format (101-109) hundred + unit2
korean(Z,numeral,B,[number]):-
    korean(E,numeral,F,[_,unit2,_,sino]),
    korean(G,numeral,H,[_,hundred,_,sino]),
    append(G,E,Z), % hundred + unit2
    B is H + F.


% Sino Korean System (111-119)  
% Unique format hundred + ten2 + unit2
korean(Z,numeral,B,[number]):-
    korean(C,numeral,D,[_,ten2,_,sino]),
    korean(E,numeral,F,[_,unit2,_,sino]),
    korean(G,numeral,H,[_,hundred,_,sino]),
    append(C,E,Y), % ten2 + unit2
    append(G,Y,Z), % hundred + ten2 + unit2
    B is H + D + F,
    B < 120.


% Sino Korean System (121-199) 
% Unique format (hundred) + unit2 * ten2 + unit2
korean(Z,numeral,B,[number]):-
    korean(C,numeral,D,[_,ten2,_,sino]),
    korean(E,numeral,F,[_,unit2,_,sino]),
    korean(Q,numeral,W,[_,unit2,first,sino]),
    korean(G,numeral,H,[_,hundred,_,sino]),
    append(E,C,X), % unit2 + ten2
    append(X,Q,Y), % unit2 + ten2 + unit2
    append(G,Y,Z), % hundred + unit2 + ten2 + unit2
    B is H + D * W + F,
    B < 200.

% Sino Korean System For 110,120,130...
% Unique format hundred + unit2*ten2
korean(A,numeral,B,[number]):-
    korean(C,numeral,D,[number,unit2,_, sino]),
    korean(E,numeral,F,[number,ten2,_, sino]),
    korean(G,numeral,H,[number,hundred,_,sino]),
    append(E,C,X), % unit2 + ten2
    append(G,X,A), % hundred + unit2 + ten2
    B is H + D * F,
    B < 200.

% Sino Korean System (211-999) 
% Unique format (unit2 * hundred) + (unit2 * ten2) + unit2
korean(Z,numeral,B,[number]):-
    korean(C,numeral,D,[_,ten2,_,sino]),
    korean(E,numeral,F,[_,unit2,_,sino]),
    korean(G,numeral,H,[_,hundred,_,sino]),
    append(F,G,X), % unit2 + hundred
    append(C,E,Y), % unit2 + ten2
    append(X,Y,W), % unit2 + hundred + unit2 + ten2
    append(W,E,Z), % unit2 + hundred + unit2 + ten2 + unit2
    B is F * H + F * D + F,
    B < 1000.

% Sino Korean System For hundreds 200,300... unit2*hundred
% Unique format unit2*hundred
korean(A,numeral,B,[number]):-
    korean(C,numeral,D,[number,unit2,_, sino]),
    korean(G,numeral,H,[number,hundred,_,sino]),
    append(C,G,A), % unit2*hundred
    B is D*H,
    B > 199.

% Sino Korean System For tens 210-290,310-390,410-490... 
% Unique format unit2*hundred + unit2*ten2
korean(A,numeral,B,[number]):-
    korean(C,numeral,D,[number,unit2,first, sino]),
    korean(C2,numeral,D2,[number,unit2,_, sino]),
    korean(E,numeral,F,[number,ten2,_, sino]),
    korean(G,numeral,H,[number,hundred,_,sino]),
    append(C,G,X), % unitC2*hundred
    append(C2,E,Y), % unitC*ten2
    append(X,Y,A), % unit2 + hundred + ten2 + unit2
    B is D * H + F * D2,
    B < 1000.

% Sino Korean System For 211-999   
% Unique format unitC*hundred + unitC2*ten2 + unitC3
korean(A,numeral,B,[number]):-
    korean(C,numeral,D,[number,unit2,first, sino]),
    korean(C2,numeral,D2,[number,unit2,_, sino]),
    korean(C3,numeral,D3,[number,unit2,_, sino]),
    korean(E,numeral,F,[number,ten2,_, sino]),
    korean(G,numeral,H,[number,hundred,_,sino]),
    append(C,G,X), % unitC*hundred
    append(C2,E,Y), % unitC2*ten2
    append(X,Y,Z), % unit2*hundred + unit2*ten2
    append(Z,C3,A), % unitC*hundred + unitC2*ten2 + unitC3
    B is D * H + F * D2 + D3,
    B < 1000.

% 1000 is its own unique word
korean([chon ],numeral,1000,[number,thousand,first, sino]).
