Version 1.5.0 of Modify Viewpoint and Tense by Jeff Nyman begins here.

"Provides modifications to viewpoint and tense handling."

Use authorial modesty.

Part - Tense and Viewpoint

Section - Reporting Current State

Reporting narrative context is an action out of world.
Understand "viewtense" as reporting narrative context.

Carry out reporting narrative context:
	say "Narrative viewpoint: [story viewpoint].";
	say "Grammatical tense: [story tense]."

Section - Plural and Singular Phrases

To say singular:
	say regarding 1.

To say plural:
	say regarding 2.

Section - Second Person

Changing to sp is an action out of world.
Understand "sp" or "second person" or "second person singular" as changing to sp.

Carry out changing to sp:
	now the story viewpoint is second person singular.

Changing to spp is an action out of world.
Understand "spp" or "second person plural" as changing to spp.

Carry out changing to spp:
	now the story viewpoint is second person plural.

Section - First Person

Changing to fp is an action out of world.
Understand "fp" or "first person" or "first person singular" as changing to fp.

Carry out changing to fp:
	now the story viewpoint is first person singular.

Changing to fpp is an action out of world.
Understand "fpp" or "first person plural" as changing to fpp.

Carry out changing to fpp:
	now the story viewpoint is first person plural.
	
Section - Third Person

Changing to tp is an action out of world.
Understand "tp" or "third person" or "third person singular" as changing to tp.

Carry out changing to tp:
	now the story viewpoint is third person singular.
	
Changing to tpp is an action out of world.
Understand "tpp" or "third person plural" as changing to tpp.

Carry out changing to tpp:
	now the story viewpoint is third person plural.

Section - Past Tense

Changing to pst is an action out of world.
Understand "pst" or "past tense" as changing to pst.

Carry out changing to pst:
	now the story tense is past tense.

Section - Present Tense

Changing to prt is an action out of world.
Understand "prt" or "present tense" as changing to prt.

Carry out changing to prt:
	now the story tense is present tense

Section - Future Tense

Changing to frt is an action out of world.
Understand "frt" or "future tense" as changing to frt.

Carry out changing to frt:
	now the story tense is future tense.

Modify Viewpoint and Tense ends here.

---- DOCUMENTATION ----

This extension is designed to make it easy to change the viewpoint and the tense of the narrative. This is really only useful if you conditionalize your story text to handle this kind of situation since Inform will not apply these changes except in the case of messages built-in to the standard library.

Inform 7 provides a kind called narrative viewpoint which provides six possible values for changing how the viewpoint is reported. Inform 7 also provides a kind called grammatical tense which provides five possible values for chaning how the tense is reported.

This extension provides a "viewtense" action to tell you what the narrative viewpoint and grammatical tense of the story currently is.

You can use the following commands to change the tense:

- past tense (alias: pst)
- present tense (alias: prt)
- future tense (alias: frt)

You can use the following commands to change the viewpoint:

- first person singular
- first person plural

- second person singular
- second person plural

- third person singular
- third person plural

In all cases, the "singular" option is the default so you don't actually have to specify it. For example, just say "first person" or "second person". You can also shorten each of the above for the singular and plural variants:

- fp
- fpp

- sp
- spp

- tp
- tpp

Let's consider some source text:
	
    Broad Walk is north of Palace Gate. "A brooding statue of Queen Victoria [singular][face] east, where the waters of the Round Pond [plural][sparkle] in the afternoon sun. [It's] possible to follow the crowded Broad Walk north and south until its borders [plural][are] lost amid the bustle of perambulators. Small paths [plural][curve] northeast and southeast between the trees."

In this case, the viewpoint doesn't matter since there's nothing in the adaptive text to change based on viewpoint. The tense, however, does change things.

The main thing to notice here those "singular" and "plural" substitutions. These are phrases provided by the extension and they're used to indicate how a verb should be rendered in terms of tense given whether the subject is of the sentence is plural or singular.

Inform 7 doesn't actually read the text in order to make these determinations so the "singular" and "plural" substitutions are provided to help.

The above text in past tense would be:

"A brooding statue of Queen Victoria faced east, where the waters of the Round Pond sparkled in the afternoon sun. It was possible to follow the crowded Broad Walk north and south until its borders were lost amid the bustle of perambulators. Small paths curved northeast and southeast between the trees."

In present tense that text would be:

"A brooding statue of Queen Victoria faces east, where the waters of the Round Pond sparkle in the afternoon sun. It's possible to follow the crowded Broad Walk north and south until its borders are lost amid the bustle of perambulators. Small paths curve northeast and southeast between the trees."

In future tense that text would be:

"A brooding statue of Queen Victoria will face east, where the waters of the Round Pond will sparkle in the afternoon sun. It'll be possible to follow the crowded Broad Walk north and south until its borders will be lost amid the bustle of perambulators. Small paths will curve northeast and southeast between the trees."

Now consider this source text:

    The visited summary of the Broad Walk is "what [we] [have] seen [singular][are] the very crowded Broad Walk".

Here changes to viewpoint and tense will modify the text.

Let's break it down. First we can look at first person.

Present tense, first person singular

"what I have seen is the very crowded Broad Walk."

Present tense, first person plural

"what we have seen is the very crowded Broad Walk."

Past tense, first person singular

"what I had seen was the very crowded Broad Walk."

Past tense, first person plural

"what we had seen was the very crowded Broad Walk."

Future tense, first person singular

"what I will have seen will be the very crowded Broad Walk."

Future tense, first person plural

"what we will have seen will be the very crowded Broad Walk."

In the case of second person, the distinction of singular and plural won't matter since the subject will always be "you." All that will change is the tense:
	
Present tense: "what you have seen is the very crowded Broad Walk."
Past tense: "what you had seen was the very crowded Broad Walk."
Future tense: "what you will have seen will be the very crowded Broad Walk."

Finally, let's consider third person.

Present tense, third person singular

"what he has seen is the very crowded Broad Walk."

Present tense, third person plural

"what they have seen is the very crowded Broad Walk."

Past tense, third person singular

"what he had seen was the very crowded Broad Walk."

Past tense, third person plural

"what they had seen was the very crowded Broad Walk."

Future tense, third person singular

"what he will have seen will be the very crowded Broad Walk."

Future tense, third person plural

"what they will have seen will be the very crowded Broad Walk."

