%% Questing 2 - No simulation 
% Beregn sandsynligheden for at trække hhv. en spar, klør, hjerter eller ruder, Pr(S), Pr(K),
% Pr(H), Pr(R).

% Pr(S) = s
% Pr(K) = r
% Pr(H) = h
% Pr(k) = k
clc
clear

Spar = 13/52*100;
Ruder = 13/52*100;
Hjerter = 13/52*100;
Kloer = 13/52*100;

%% Questing 3 - No simulation
% Beregn sandsynligheden for at trække et es, Pr(Es).
% Pr(Es) = es
clc
clear

es = 4/52*100;

%% Questing 4 - No simulation
% Beregn sandsynligheden for at trække hjerter es, Pr(Es ∩ H).
% Pr(Es ∩ H) = EsH
clc
clear

Esh = 4/52*13/52*100;

%% Questing 5 - No simultation
% Er hændelserne Es og H uafhængige?

% Ja jf. svaret v. spørgsmål 4 er der belæg for at hændelserne Es og H er
% uafhængige

%% Træk to tilfældige kort uden tilbagelægning

%% Questing 6 - No simulation
% Beregn sandsynligheden for at trække mindst et es, Pr(mindst 1 es).
% Pr(Es) = Pr(Es1) + Pr(Es2)
clc
clear

es6 = ((4/52)+(4/51))*100;

%% Questing 7 - No simulation
% Beregn sandsynligheden for at tr�kke 2 esser Pr(2 esser)
% Pr(2 Esser) = Pr(Es1) * Pr(Es2)
clc
clear

es7 = (4/52 * 3/51)*100;

%% Question 8 - No simulation
%  Beregn sandsynligheden for at et af kortene er hjerter es
% Pr(Esh) = Pr(EsH) + Pr(!Esh, Esh)
clc
clear

es8 = ((4/52*13/52)+(4/51*13/51))*100;
es82 = ((4/52*13/52)+(51/52*(4/51*13/51)))*100;

%% Question 9 - No simulation
% Beregn sandsynligheden for at ingen af kortene er hjerter es
% Ligesom Pr(E) = 1 - Pr(!E) er Pr(!E) = 1 - Pr(E)
% Pr(!EsH) = 1 - Pr(EsH) + Pr(EsH)
% Pr(!EsH) = Pr(!EsH, !EsH)
clc
clear

es9 = (1 - ((4/52*13/52)+(4/51*13/51))) * 100;
es91 = (51/52*50/51)*100;

%% Question 10 - No simulation

% Beregn sandsynligheden for at summen af de to kort er 17

% Pr(Sum17) = Pr(10,7) + Pr(7,10) + Pr(9,8) + Pr(8,9)
clc
clear

sum17 = ((16/52*4/51) + (4/52*16/51) + (4/52*4/51) + (4/52*4/51))*100;



%% Question 2 - No Simulation w. Joker
clc
clear

HjerterWithJokers = 13/55*100
RuderWithJokers = 13/55*100
KloerWithJokers = 13/55*100
SparWithJokers = 13/55*100


%% Question 3 - No Simulation w. Joker
clc
clear

EsWithJokers = 4/55*100

%% Question 4 - No Simulation w. Joker
clear

HjerterEs = 4/55*13/55*100;
1/55*100

%% Question 5 - No simulation w. joker
% Nej, 




