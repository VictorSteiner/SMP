%% Questing 2 - No simulation 

% Beregn sandsynligheden for at trække hhv. en spar, klør, hjerter eller ruder, Pr(S), Pr(K),
% Pr(H), Pr(R).

% Pr(S) = s
% Pr(K) = r
% Pr(H) = h
% Pr(k) = k

s = 13/52*100;
r = 13/52*100;
h = 13/52*100;
k = 13/52*100;

%% Questing 3 - No simulation

% Beregn sandsynligheden for at trække et es, Pr(Es).

% Pr(Es) = es

es = 4/52*100;

%% Questing 4 - No simulation

% Beregn sandsynligheden for at trække hjerter es, Pr(Es ∩ H).

% Pr(Es ∩ H) = EsH

Esh = 4/52*13/52*100;

%% Questing 5 - No simultation

% Er hændelserne Es og H uafhængige?

% Ja jf. svaret v. spørgsmål 4 er der belæg for at hændelserne Es og H er
% uafhængige

%% Træk to tilfældige kort uden tilbagelægning

%% Questing 6 - No simulation

% Beregn sandsynligheden for at trække mindst et es, Pr(mindst 1 es).

% Pr(Es) = Pr(Es1) + Pr(Es2)

es6 = ((4/52)+(4/51))*100;

%% Questing 7 - No simulation

% Beregn sandsynligheden for at tr�kke 2 esser Pr(2 esser)

% Pr(2 Esser) = Pr(Es1) * Pr(Es2)

es7 = (4/52 * 4/51)*100;

%% Question 8 - No simulation

%  Beregn sandsynligheden for at et af kortene er hjerter es

% Pr(Esh) = Pr(EsH) + Pr(Esh)

es8 = ((4/52*13/52)+(4/51*13/51))*100;

%% Question 9 - No simulation

% Beregn sandsynligheden for at ingen af kortene er hjerter es

% Ligesom Pr(E) = 1 - Pr(!E) er Pr(!E) = 1 - Pr(E)
% Pr(!EsH) = 1 - Pr(EsH) + Pr(EsH)

es9 = (1 - ((4/52*13/52)+(4/51*13/51))) * 100;

%% Question 10 - No simulation

% Beregn sandsynligheden for at summen af de to kort er 17

% Pr(Sum17) = Pr(10,7) + Pr(7,10) + Pr(9,8) + Pr(8,9)

sum17 = ((16/52*4/51) + (4/52*16/51) + (4/52*4/51) + (4/52*4/51))*100;
