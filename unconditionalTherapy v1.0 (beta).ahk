;UnconditionalTherapy
;CameronBxxk

FormatTime, todaydate, , MMddyy

InputBox, yourname, Your Name, Hello there! I am unconditionalTherapy.`nYour 24/7 unconditional Therapist :)`nWhat is your name? 
FileAppend, %todaydate% Journal entry for %yourname%`n, %todaydate%.txt
FileAppend, `n, %todaydate%.txt

	Sleep, 50

InputBox, rating, Overall Rating x/10, How would you say you're feeling today %yourname%?`nEnter an x/10 rating :)
FileAppend, You reported feeling %rating% today`n, %todaydate%.txt
FileAppend, `n, %todaydate%.txt

Sleep, 50

InputBox, suicide, Suicidal Ideation, %yourname%.`nAre you feeling suicidal?`n(Yes or No)
FileAppend, Were you feeling suicidal?- %suicide%`n, %todaydate%.txt
FileAppend, `n, %todaydate%.txt
	If (SubStr(suicide,1,1)="y")
	Goto Jump1
	Else
	Goto Jump2
	
	Sleep, 50

	Jump1:
InputBox, whysuicide, Suicidal Ideation, Im so sorry that you're feeling suicidal %yourname%.`nWhat are the biggest factors causing you to feel that way?
FileAppend, You reported feeling suicidal because of- %whysuicide%`n, %todaydate%.txt
FileAppend, `n, %todaydate%.txt
	Goto Jump6

	Sleep, 50

	Jump2:
MsgBox, That makes me so happy %yourname%!`nThank you for sharing!`nI know it can be rough to talk about how you're feeling.

	Sleep, 50

	Jump6:
InputBox, anxiety, Anxiety and Panic, Are you feeling anxious or panicked at all?`n(Yes or No)
FileAppend, Were you feeling anxious or panicked?- %anxiety%`n, %todaydate%.txt
FileAppend, `n, %todaydate%.txt
	If (SubStr(anxiety,1,1)="y")
	Goto Jump3
	Else
	Goto Jump4
	
	Sleep, 50 

	Jump3:
InputBox, anxiety, Anxiety and Panic, Can you ellaborate on that?`nWhat has got you worried lately?  
FileAppend, You reported feeling anxious because of- %anxiety%`n, %todaydate%.txt
FileAppend, `n, %todaydate%.txt
Goto Jump5

	Sleep, 50 

	Jump4:
MsgBox, Im so happy to hear you say that %yourname%!`nNo anxiety is a good thing! 

	Sleep, 50 

	Jump5:
InputBox, rant, Time to rant!! rant!! rant!!, Anything else on your mind %yourname%?`nTalk about your family. Talk about your friends. How is work? How is your medication?
FileAppend, Was there anything else on your mind?- %rant%`n, %todaydate%.txt
FileAppend, `n, %todaydate%.txt

	Sleep, 50

MsgBox, %yourname%, you are loved. You are important, and you have great value. I love you. Your friends and family do too. So stay up and stay safe.`nHelp is always available.`n988 Suicide and Crisis Lifeline.

MsgBox, Thanks for chatting %yourname% :)`nI have recorded your responces in a .txt for you`nTalk to you soon!

ExitApp
^Esc::ExitApp