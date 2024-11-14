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
