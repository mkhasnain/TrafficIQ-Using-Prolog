% Traffic conditions for different time intervals
traffic_condition(1, Cars, Condition) :- traffic(Condition, Cars).
traffic_condition(5, Cars, Condition) :- traffic(Condition, Cars).
traffic_condition(10, Cars, Condition) :- traffic(Condition, Cars).
traffic_condition(30, Cars, Condition) :- traffic(Condition, Cars).
traffic_condition(60, Cars, Condition) :- traffic(Condition, Cars).
