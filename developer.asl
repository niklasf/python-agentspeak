{include("common.asl")}

+!day(Day) : not last_phase(Day) & .should_add(true) <-
  .add_file(Filename);
  .print("added file: ", Filename).

/*

+!day(Day) : last_phase(Day) & should_add(true) <-
  .add_file(Filename);
  .print("added file: ", Filename).

+!day(Day) : last_phase(Day) & .random(Rand) & Rand > 0.5 <-
  if (.delete_file(Filename)) {
    .print("deleted file: ", Filename);
  }.

*/

+!day(Day).
