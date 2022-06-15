% Program to Predict Tournament Results

% 2021 Tournament Result Dataset
tourney_results = [10,9,8,7,6,5,4,3,2,1];

% 2021 Pre-Tournament Ranking Dataset
tourney_rankings = [10,9,6,7,8,5,4,3,2,1];

% Player Names respective to datasets 
names = ["Lee", "Westin", "Henry", "Doug", "Johnny", "Juan", "Raileen", "Gaby", "Hina", "Allyson"];

% Storing Player Names as a finite set of discrete catagories
y = categorical(names);

% Subtracting each corresponding element of the dataset to determine the
% rank vs. result difference
diff = minus(tourney_results,tourney_rankings);



% Plotting scatterplot of results vs. rankings
scatter(tourney_results, y,'o','r');
grid on;
hold on;
scatter(tourney_rankings, y, 'x', 'b');
legend("Tournament Results", "Pre-Tournament Rankings");
title("Smash Rankings Overlaying Tournament Results");
xlabel("Rankings");
ylabel("Players");

% Plotting the change between ranking and result
f2 = figure;
slope = diff;
grid on;
hold on;
scatter(y, slope, 'x','r');
title("Difference in Rank and Result");
xlabel("Players");
ylabel("Change");

% Plotting the new rankings vs. results
f3 = figure;
new_tourney_rankings = [9,10,7,6,5,8,4,3,2,1];

% This dataset is the +/- difference of each player's pre-tournament ranking
% and result. Obviously, this is not incredibly accurate (only comparing two values), but this program
% will get more accurate the more tournaments we play.
predicted_results = [9,10,8,6,4,8,4,3,2,1];
scatter(new_tourney_rankings, y,'o','r');
grid on;
hold on;
scatter(predicted_results,y,'x','b');
legend("New Rankings", "Predicted Results");
title("Predicted Rankings for 2022 Tournament");
xlabel("Rankings");
ylabel("Players");

