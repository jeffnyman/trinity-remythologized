Version 1.0.0 of Contextual Descriptions by Jeff Nyman begins here.

"Provides a mechanism for contextually shifting descriptions."

Part - Location Name Display Handling

To say a/an lowercase (item - an object):
	let T be "[an item]";
	say "[T in lower case]".

To say the lowercase (item - an object):
	let T be "[the item]";
	say "[T in lower case]".

Part - Location Summary

A room has some text called the unvisited summary.
The unvisited summary of a room is usually "[a lowercase item described]".

A room has some text called the visited summary.
The visited summary of a room is usually "[the lowercase item described]".

Part - Summarize Action

To say summarize (the place - a room):
	if the place is visited, say the visited summary of the place;
	otherwise say the unvisited summary of the place.

Contextual Descriptions ends here.

---- DOCUMENTATION ----

This extension allows for contextually shifting descriptions for rooms. What that means is simply that how a room is described in some particulars may differ based on what the protagonist has seen. The underlying idea here is that how we describe a location to others or even to ourselves would differ if this is the first time we're seeing the location versus seeing it again at a different time.

To this end, the extension provides a "visited summary" and "unvisited summary" that can be applied to rooms. These bits of text are what can be displayed as part of a room description.
