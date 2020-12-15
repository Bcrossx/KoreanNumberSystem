% Phonetics - Properties of English phones

:- ['phone.pl'].

% Consonants
cns(A):- name(A,[112]). %p
cns(A):- name(A,[098]). %b
cns(A):- name(A,[109]). %m
cns(A):- name(A,[116]). %t
cns(A):- name(A,[100]). %d
cns(A):- name(A,[110]). %n
cns(A):- name(A,[107]). %k
cns(A):- name(A,[103]). %g
cns(A):- name(A,[331]). %weird n thing
cns(A):- name(A,[102]). %k
cns(A):- name(A,[118]). %t
cns(A):- name(A,[952]). %t
cns(A):- name(A,[240]). %t
cns(A):- name(A,[115]). %t
cns(A):- name(A,[122]). %t
cns(A):- name(A,[643]). %t
cns(A):- name(A,[658]). %t
cns(A):- name(A,[269]). %t
cns(A):- name(A,[496]). %t
cns(A):- name(A,[108]). %t
cns(A):- name(A,[633]). %t
cns(A):- name(A,[106]). %t
cns(A):- name(A,[119]). %t
cns(A):- name(A,[104]). %t

% Sonorant
snt(A):- name(A,[109]). %m
snt(A):- name(A,[110]). %n
snt(A):- name(A,[331]). %%weird n thing
snt(A):- name(A,[108]). %l
snt(A):- name(A,[633]). %little I thing
snt(A):- name(A,[106]). %j
snt(A):- name(A,[119]). %w
snt(A):- name(A,[105]). %i
snt(A):- name(A,[618]). %I
snt(A):- name(A,[101]). %e
snt(A):- name(A,[230]). %ae
snt(A):- name(A,[117]). %u
snt(A):- name(A,[650]). %horseshoe
snt(A):- name(A,[111]). %o
snt(A):- name(A,[097]). %a
snt(A):- name(A,[601]). %upside down e
snt(A):- name(A,[652]). %carrot ^

% Nasal
nas(A):- name(A,[109]).
nas(A):- name(A,[110]).
nas(A):- name(A,[331]).

% Voiced
voi(A):- name(A,[098]).
voi(A):- name(A,[109]).
voi(A):- name(A,[100]).
voi(A):- name(A,[110]).
voi(A):- name(A,[103]).
voi(A):- name(A,[331]).
voi(A):- name(A,[118]).
voi(A):- name(A,[240]).
voi(A):- name(A,[122]).
voi(A):- name(A,[658]).
voi(A):- name(A,[496]).
voi(A):- name(A,[108]).
voi(A):- name(A,[633]).
voi(A):- name(A,[106]).
voi(A):- name(A,[119]).
voi(A):- name(A,[105]).
voi(A):- name(A,[618]).
voi(A):- name(A,[101]).
voi(A):- name(A,[230]).
voi(A):- name(A,[117]).
voi(A):- name(A,[650]).
voi(A):- name(A,[111]).
voi(A):- name(A,[097]).
voi(A):- name(A,[601]).
voi(A):- name(A,[652]).

% Continuant
cnt(A):- name(A,[102]).
cnt(A):- name(A,[118]).
cnt(A):- name(A,[952]).
cnt(A):- name(A,[240]).
cnt(A):- name(A,[115]).
cnt(A):- name(A,[122]).
cnt(A):- name(A,[643]).
cnt(A):- name(A,[658]).
cnt(A):- name(A,[108]).
cnt(A):- name(A,[633]).
cnt(A):- name(A,[106]).
cnt(A):- name(A,[119]).
cnt(A):- name(A,[104]).
cnt(A):- name(A,[105]).
cnt(A):- name(A,[618]).
cnt(A):- name(A,[101]).
cnt(A):- name(A,[230]).
cnt(A):- name(A,[117]).
cnt(A):- name(A,[650]).
cnt(A):- name(A,[111]).
cnt(A):- name(A,[097]).
cnt(A):- name(A,[601]).
cnt(A):- name(A,[652]).

% Labial
lab(A):- name(A,[112]).
lab(A):- name(A,[098]).
lab(A):- name(A,[109]).
lab(A):- name(A,[102]).
lab(A):- name(A,[118]).
lab(A):- name(A,[119]).

% Alveolar
alv(A):- name(A,[116]).
alv(A):- name(A,[100]).
alv(A):- name(A,[110]).
alv(A):- name(A,[115]).
alv(A):- name(A,[122]).
alv(A):- name(A,[108]).
alv(A):- name(A,[633]).

% Palatal
pal(A):- name(A,[643]).
pal(A):- name(A,[658]).
pal(A):- name(A,[269]).
pal(A):- name(A,[496]).
pal(A):- name(A,[633]).
pal(A):- name(A,[106]).
 
% Anterior
ant(A):- name(A,[112]).
ant(A):- name(A,[098]).
ant(A):- name(A,[109]).
ant(A):- name(A,[116]).
ant(A):- name(A,[100]).
ant(A):- name(A,[110]).
ant(A):- name(A,[102]).
ant(A):- name(A,[118]).
ant(A):- name(A,[952]).
ant(A):- name(A,[240]).
ant(A):- name(A,[115]).
ant(A):- name(A,[122]).
ant(A):- name(A,[108]).
ant(A):- name(A,[633]).

% Velar
vel(A):- name(A,[107]).
vel(A):- name(A,[103]).
vel(A):- name(A,[331]).
vel(A):- name(A,[119]).

% Coronal
cor(A):- name(A,[116]).
cor(A):- name(A,[100]).
cor(A):- name(A,[110]).
cor(A):- name(A,[952]).
cor(A):- name(A,[240]).
cor(A):- name(A,[115]).
cor(A):- name(A,[122]).
cor(A):- name(A,[643]).
cor(A):- name(A,[658]).
cor(A):- name(A,[269]).
cor(A):- name(A,[496]).
cor(A):- name(A,[108]).
cor(A):- name(A,[633]).
cor(A):- name(A,[106]).

% Sibilant
sib(A):- name(A,[115]).
sib(A):- name(A,[122]).
sib(A):- name(A,[643]).
sib(A):- name(A,[658]).
sib(A):- name(A,[269]).
sib(A):- name(A,[496]).

% High
hih(A):- name(A,[105]).
hih(A):- name(A,[618]).
hih(A):- name(A,[117]).
hih(A):- name(A,[650]).

% Mid (high-low)
mid(A):- name(A,[101]).
mid(A):- name(A,[111]).
mid(A):- name(A,[601]).
mid(A):- name(A,[652]).

% Low
low(A):- name(A,[230]).
low(A):- name(A,[097]).

% Back
bck(A):- name(A,[117]).
bck(A):- name(A,[650]).
bck(A):- name(A,[111]).
bck(A):- name(A,[097]).

% Central (front-back)
ctr(A):- name(A,[601]).
ctr(A):- name(A,[652]).

% Tense
tns(A):- name(A,[105]).
tns(A):- name(A,[117]).

% Stressed
str(A):- name(A,[105]).
str(A):- name(A,[618]).
str(A):- name(A,[101]).
str(A):- name(A,[230]).
str(A):- name(A,[117]).
str(A):- name(A,[650]).
str(A):- name(A,[111]).
str(A):- name(A,[097]).
str(A):- name(A,[652]).
