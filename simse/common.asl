weekend(5) :- true.
weekend(6) :- true.
weekend(Day) :- Day >= 7 & weekend(Day mod 7).

last_phase(Day) :- Day > 1100.
