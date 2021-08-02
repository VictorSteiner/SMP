GameNumber = 1000;

%% Question 2 - Simulation
clc

AntalHjerter = 0;
AntalRuder = 0;
AntalSpar = 0;
AntalKloer = 0;

for n=1:GameNumber
    cards = shufflecards();
    AntalHjerter = AntalHjerter + contains(cards(1).name, 'Hearts');
    AntalRuder = AntalRuder + contains(cards(1).name, 'Pikes');
    AntalSpar = AntalSpar + contains(cards(1).name, 'Tiles');
    AntalKloer = AntalKloer + contains(cards(1).name, 'Clovers');
end


PctHjerter = AntalHjerter / GameNumber * 100
PctRuder = AntalRuder / GameNumber * 100
PctSpar = AntalSpar / GameNumber * 100
PctKloer = AntalKloer / GameNumber * 100

%% Question 3 - Simulation

EsFoerst = 0;

for n=1:GameNumber
    cards = shufflecards();
    if cards(1).value == 1
        EsFoerst = EsFoerst + 1;
    end
end
    
PctEsFoerst = EsFoerst / GameNumber

%% Question 4 - Simulation

AntalHjerterEs = 0;

for n=1:GameNumber
    cards = shufflecards();
    AntalHjerterEs = AntalHjerterEs + contains(cards(1).name, 'Ace of Hearts');
end

pctHjerterEs = AntalHjerterEs / GameNumber * 100

%% Question 6 - Simulation

AntalEs = 0;

for n=1:GameNumber
    cards = shufflecards();
    if cards(1).value == 1
        AntalEs = AntalEs + 1;
    elseif cards(2).value == 1
        AntalEs = AntalEs +1;
    end
end

%% Question 7 - Simulation

AntalToEs = 0;

for n=1:GameNumber
    cards = shufflecards();
    if cards(1).value && cards(2).value == 1
        AntalToEs = AntalToEs + 1;
    end
end

pctToEs = AntalToEs / GameNumber * 100;

%% Question 8 - Simulation

AntalHjerterEs = 0;

for n=1:GameNumber
    cards = shufflecards();
    AntalHjerterEs = AntalHjerterEs + contains(cards(1).name, 'Ace of Hearts') + contains(cards(2).name, 'Ace of Hearts');
end

pctHjerterEs = AntalHjerterEs / GameNumber * 100;

%% Question 9 - Simulation

AntalIkkeHjerterEs = 0;

for n=1:GameNumber
    cards = shufflecards();
    if contains(cards(1).name, 'Ace of Hearts') + contains(cards(2).name, 'Ace of Hearts')~=1;
        AntalIkkeHjerterEs = AntalIkkeHjerterEs + 1;
    end
end

pctIkkeHjerterEs = AntalIkkeHjerterEs / GameNumber * 100;

%% Question 10 - Simulation

Antal_17 = 0;

for n=1:GameNumber
    cards = shufflecards();
    if cards(1).value+cards(2).value == 17
        Antal_17 = Antal_17 + 1;
    end
end

pctAntal_17 = Antal_17 / GameNumber * 100;
