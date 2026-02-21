PUSH            {R4,LR}
MOV             R4, R2
BL              sub_2CF53C
LDR             R2, =off_6AD02C
MOV             R1, #2
AND             R1, R1, R4,LSL#1
STR             R1, [R0,#0xFC]
STR             R2, [R0]
POP             {R4,PC}
