ORG 0000H
MOV TMOD, #10H
HERE: MOV TL1, #33H
MOV TH1, #0FEH
CPL P1.0
ACALL DELAY
SJMP HERE

//22BCI0198

DELAY: SETB TR1
AGAIN: JNB TF1, AGAIN
CLR TR1
CLR TF1
RET
END