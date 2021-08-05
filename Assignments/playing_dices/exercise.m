%% Question 1 
clear;
clc;

k = 3;
dice_values = [1, 2, 3, 4, 5, 6];

outcomes = dec2base(1:length(dice_values)^k-1,length(dice_values)) - '0';
outcomes = outcomes + 1;
outcomes(216, :) = [1 1 1]; % Somehow 1 1 1 is missing;

prob = zeros(1, 18);

for n=1:length(outcomes)
    i = sum(outcomes(n, :));
    prob(i) = prob(i) + 1;
end


%% Question 2
clear;
clc;

k = 3;
dice_values = [1, 2, 3, 4, 5, 6];

%plot af pmf
outcomes = dec2base(1:length(dice_values)^k-1,length(dice_values)) - '0';
outcomes = outcomes + 1;
outcomes(216, :) = [1 1 1]; % Somehow 1 1 1 is missing;

out_length = length(outcomes);

for n=1:out_length
    outcomes(n, :) = sum(outcomes(n, :));
end

figure(1)
histogram(outcomes)

% -------- Simulation -------- %

for n=1:out_length
    all_roll = randi(length(dice_values), k, 1); 
    outcomes(n, :) = sum(all_roll);
end
    
figure(2)
histogram(outcomes)

%% Question 3
clear;
clc;

k = 3;
dice_values = [1, 2, 3, 4, 5, 6];

outcomes = dec2base(1:length(dice_values)^k-1,length(dice_values)) - '0';
outcomes = outcomes + 1;
outcomes(216, :) = [1 1 1]; % Somehow 1 1 1 is missing;

out_length = length(outcomes);

for n=1:out_length
    outcomes(n, :) = sum(outcomes(n, :));
end

figure(3)
histogram(outcomes, 'Normalization', 'cdf');

% -------- Simulation -------- %

for n=1:out_length
    all_roll = randi(length(dice_values), k, 1); 
    outcomes(n, :) = sum(all_roll);
end

figure(4)
histogram(outcomes, 'Normalization', 'cdf');


%% Question 4-7
clear;
clc;

k = 3;
dice_values = [1, 2, 3, 4, 5, 6];

outcomes = dec2base(1:length(dice_values)^k-1,length(dice_values)) - '0';
outcomes = outcomes + 1;
outcomes(216, :) = [1 1 1]; % Somehow 1 1 1 is missing;

out_length = length(outcomes);

for n=1:out_length
    outcomes(n, :) = sum(outcomes(n, :));
end

[pdf, ~] = histcounts(outcomes, 'Normalization', 'pdf');

% question 4
pr_8 = pdf(6);

% question 5
pr_gte_12 = 0;

for n=10:16
    pr_gte_12 = pr_gte_12 + pdf(n);
end

% question 6

pr_gte_9_lte_15 = 0;

for n=7:13
    pr_gte_9_lte_15 = pr_gte_9_lte_15 + pdf(n);
end

% question 7

pr_lt_4_gt_16 = pdf(1) + pdf(15) + pdf(16);

%% Question 8 - 9
clear;
clc;

k = 3;
dice_values = [1, 2, 3, 4, 5, 6];

outcomes = dec2base(1:length(dice_values)^k-1,length(dice_values)) - '0';
outcomes = outcomes + 1;
outcomes(216, :) = [1 1 1]; % Somehow 1 1 1 is missing;

out_length = length(outcomes);

for n=1:out_length
    outcomes(n, :) = sum(outcomes(n, :));
end

[pdf, ~] = histcounts(outcomes, 'Normalization', 'pdf');

X = 3:18;
P = pdf;
ex = 0;
ex2 = 0;

for n = 1:length(pdf)
   ex = ex + (X(n) * P(n));
   ex2 = ex2 + (X(n)^2 * P(n));
end

syms x k

x = 1:16;

s = sum(k * pdf(x), 3:18);

S = "m*diff(y,t,t) == m*g-k*y";
symstr = ["'The equation of motion is'"; S;"'where k is the elastic coefficient.'"];
displayFormula(symstr)


%F(x) = symsum(k*x,k,3,18);

%pdf = sym(pdf);
%F = @(x, k) k * pdf(x);
%F('x', 'k')

%f = symsum(F('x', 'k'), x, [3; 18]);

%disp(f);



round(ex, 1);

% question 8

round(ex2, 2);

% question 9

%sdx = sqrt(varx);

%% question 10

% Hvad er sandsynligheden for at antallet ligger inden for hhv. 1, 2 og 3 standard
% afvigelser fra middelværdien (dvs. 𝜇𝑋 − 𝜎𝑋 ≤ 𝑋 ≤ 𝜇𝑋 + 𝜎𝑋 , hhv. ±2𝜎𝑋 og ±3𝜎𝑋)?

