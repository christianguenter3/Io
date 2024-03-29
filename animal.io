Object ancestors := method(
	prototype := self proto
	if(prototype != Object,
		writeln("Slots of ", prototype type, "\n-----------")
		prototype slotNames foreach(slotName, writeln(slotName))
		writeln 
		prototype ancestors))

Animal := Object clone
Animal speak := method("ambiguous animal noise" println)

Duck := Animal clone
Duck speak := method( "quack" println)

Duck walk := method("waddle" println)

LameDuck := Duck clone
LameDuck walk := method("lame waddle" println)

disco := LameDuck clone
LameDuck speak
disco ancestors
