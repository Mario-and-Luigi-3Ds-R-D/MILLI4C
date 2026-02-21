PUSH            {R4-R6,LR}
MOVS            R4, #2
LDR             R5, =dword_6E12D8
MOVS            R6, #0
MOVS            R0, #8
BL              sub_301570
STR             R4, [R5,#(dword_6E12DC - 0x6E12D8)]
STR             R0, [R5]
MOVS            R0, R4
LSLS            R0, R0, #2
LDR             R1, [R5]
SUBS            R0, R0, #4
SUBS            R4, R4, #1
CMP             R4, #0
STR             R6, [R1,R0]
BNE             loc_10373E
LDR             R2, =sub_100000
LDR             R1, =(sub_1037EE+1)
MOVS            R0, R5
BLX             nullsub_357
POP             {R4-R6,PC}
