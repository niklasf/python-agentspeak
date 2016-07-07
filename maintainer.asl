{include("common.asl")}

+!day(Day) : weekend(Day) <-
  .print("Maintainer not available on weekend").

+!day(Day) <-
  .print("Maintainer awakes on day", Day).
