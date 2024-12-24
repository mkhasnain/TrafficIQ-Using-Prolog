% Traffic condition facts based on car count predictions
traffic(low, Cars) :- Cars >= 0, Cars =< 5.
traffic(medium, Cars) :- Cars >= 6, Cars =< 20.
traffic(high, Cars) :- Cars >= 21.

% Traffic conditions for different time intervals
traffic_condition(1, Cars, Condition) :- traffic(Condition, Cars).
traffic_condition(5, Cars, Condition) :- traffic(Condition, Cars).
traffic_condition(10, Cars, Condition) :- traffic(Condition, Cars).
traffic_condition(30, Cars, Condition) :- traffic(Condition, Cars).
traffic_condition(60, Cars, Condition) :- traffic(Condition, Cars).

% Traffic advisories based on conditions
advisory(low, "No Congestion. Clear Intersection Ahead").
advisory(medium, "Moderate Traffic. Expect Some Delays").
advisory(high, "High Traffic. Consider Alternate Routes").

% Simulate traffic volume predictions for an intersection
simulate_traffic(TimeInterval, Cars) :-
    traffic_condition(TimeInterval, Cars, Condition),
    advisory(Condition, Advisory),
    format("At ~d minutes, with ~d cars: ~s", [TimeInterval, Cars, Advisory]).

% Dynamic traffic thresholds based on the time of day
dynamic_traffic(morning, low, Cars) :- Cars >= 0, Cars =< 10.
dynamic_traffic(morning, medium, Cars) :- Cars >= 11, Cars =< 30.
dynamic_traffic(morning, high, Cars) :- Cars >= 31.

dynamic_traffic(afternoon, low, Cars) :- Cars >= 0, Cars =< 8.
dynamic_traffic(afternoon, medium, Cars) :- Cars >= 9, Cars =< 25.
dynamic_traffic(afternoon, high, Cars) :- Cars >= 26.

dynamic_traffic(evening, low, Cars) :- Cars >= 0, Cars =< 5.
dynamic_traffic(evening, medium, Cars) :- Cars >= 6, Cars =< 20.
dynamic_traffic(evening, high, Cars) :- Cars >= 21.

% Simulate dynamic traffic model based on time of day
simulate_dynamic_traffic(TimeOfDay, TimeInterval, Cars) :-
    dynamic_traffic(TimeOfDay, Condition, Cars),
    advisory(Condition, Advisory),
    format("At ~d minutes in the ~s, with ~d cars: ~s", [TimeInterval, TimeOfDay, Cars, Advisory]).
