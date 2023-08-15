Trinity Remythologized by Jeff Nyman begins here.

"Personal extension to provide story-specific supplemental material."

Use authorial modesty.

Part - Extensions

Include Standard Additions by Jeff Nyman.

Section G (for Glulx only)

Include Glulx Text Effects by Emily Short.

Part - Unicode Determination

[ This logic is derived from the extension "Unicode Interrogation" by Michael Martin. ]

Section Z (for Z-Machine only) (unindexed)

To decide whether unicode (X - a number) is supported exactly/--:
	(- (unicode_test({X}) == 1) -)

Include (-
[ unicode_test x i;
	if (0->$32 == 0) return 0;
	@check_unicode x -> i;
	return i & 1;
];
-).

Section G (for Glulx only) (unindexed)

To decide whether unicode (X - a number) is supported exactly:
	(- (glk_gestalt(gestalt_CharOutput, {X}) == gestalt_CharOutput_ExactPrint) -).
	
To decide whether unicode (X - a number) is supported:
	(- (glk_gestalt(gestalt_CharOutput, {X}) ~= gestalt_CharOutput_CannotPrint) -).

Part - Text Substitutions

To say i -- beginning say_i -- running on: (- style underline; -).
To say /i -- ending say_i -- running on: (- style roman; -).
To say em -- beginning say_em -- running on: (- style underline; -).
To say /em -- ending say_em -- running on: (- style roman; -).

To say p -- running on: (- DivideParagraphPoint(); new_line; -).
To say br -- running on: (- new_line; -).
To say r -- running on: (- RunParagraphOn(); -).

To say tt -- beginning say_tt -- running on: (- font off; -).
To say /tt -- ending say_tt -- running on: (- font on; -).

Section Z (for Z-Machine only)

To say b -- beginning say_b -- running on: (- style bold; -).
To say /b -- ending say_b -- running on: (- style roman; -).

To say strong -- beginning say_strong -- running on: (- style bold; -).
To say /strong -- ending say_strong -- running on: (- style roman; -).

Section G (for Glulx only)

To say b -- beginning say_b -- running on: say first custom style.
To say /b -- ending say_b -- running on: (- style roman; -).

To say strong -- beginning say_strong -- running on: say first custom style.
To say /strong -- ending say_strong -- running on: (- style roman; -).

Section - Symbols

To say copyright symbol:
	if unicode 169 is supported:
		say unicode 169; [copyright]
	otherwise:
		say "(C)".

To say --:
	if Unicode 8212 is supported:
		say Unicode 8212; [em-dash]
	otherwise:
		say "--".

To say -:
	if Unicode 8211 is supported:
		say Unicode 8211; [en-dash]
	otherwise:
		say "-".

Trinity Remythologized ends here.