ORG 0000H
MOV TMOD, #01H
HERE: MOV TL0, #66H
MOV TH0, #0FCH
CPL P1.0
ACALL DELAY
SJMP HERE

//22BCI0198

DELAY: SETB TR0
AGAIN: JNB TF0, AGAIN
CLR TR0
CLR TF0
RET
END 