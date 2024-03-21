
!start.

@p1[hello(world),time(sunny)]
+!start
<- 
    .print("hello world").

+!start
<-
    .print("by world").

+hello(world)[source(sender1)]
<-
    .print("I receive a message from sender1");
    -hello(world)[source(sender1)];
    -hello(world);
    !stop.

+hello(world)[source(S)]
<-
    .print("I receive a message from", S).


+!stop: hello(world)[source(S)]
<-
    .print("almost one belief remains").

+!stop
<-
    .print("all delete").