%% Question 1

% Pr(S and E) = 0.2
% Pr(!S and E) = 0.01
% Pr(S) = 0.5

% Pr(E) = Pr(S and E) + Pr(!S and E)

ebola1 = 0.2 + 0.01;

%% Question 2

%Pr(!S|E) = Pr(!S and E) / Pr(E)

ebola2 = 0.01 / 0.21;

%% Question 3

% Pr(k) = (n! / k1(n-1)!) * p^k * q^n-k

% Pr(!E|S) = 1 - Pr(E|S) = 1 - Pr(E and S) / Pr(S)

e1 = 1 - 0.2 / 0.5;

% Pr(!E|!S) = 1 - Pr(E|!S) = 1 - Pr(E and !S) / Pr(!S)

e2 = 1 - 0.01 / 0.5;

% Pr(!E|S)^5
e3 = e1^5;

% Pr(!E|!S)^5
e4 = e2^5;

% Pr(10*!E) = Pr(!E|S) * Pr(!E|!S)
e5 = e3*e4;

% Pr(10*E] = 1 - (Pr(!E|S) * Pr(!E|!S)
e6 = 1 - e5;

%% Question 4

% Tjek den anden fil

%% Question 5/6

% Pr(Patient har Ebola) = 1/10

% Average tests er summen af N = 1*Pr(1) + 2*Pr(2) ... 10*Pr(10)

ebola5 = (1*(1/10)) + (2*(1/10)) + (3*(1/10)) + (4*(1/10)) + (5*(1/10)) + (6*(1/10)) + (7*(1/10)) + (8*(1/10)) + (9*(1/10)) + (10*(1/10));  

% kan forkortes vha. symsum() funktionen, som finder summen af serien af

syms k;
ebola52 = symsum(k*1/10,k,1,10);

%% Question 7

% Pr(E) = 0.2

% n = 10, k = 2

ebola7 = factorial(10) / (factorial(2)*factorial(10-2))

%% Question 8

% 45 forskellige kombinationer af 2 patienter (se question 7)
% Kun en af dem har de 2 smittede personer

ebola8 = 1/45;

%% Question 11

% lavede i den anden matlab fil (Ebola Outbreak simulering)

% Pr(>100) = N100 / Nsim

% Pr(>100 personer smittet efter 10 dage) = N100(antallet af simuleringer
% med over 100 smittede) / Nsim(samlet antal af simuleringer)