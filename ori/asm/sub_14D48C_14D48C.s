PUSH            {R4,LR}
LDR             R2, =off_6ACDB8
LDR             R1, [R0,#0x148]
MOV             R4, R0
STR             R2, [R0]
CMP             R1, #0
ADDNE           R0, R4, #0x13C
BLNE            sub_528B1C
ADD             R0, R4, #0x120
NOP
SUB             R0, R0, #0x120
BL              sub_14CD84
POP             {R4,LR}
B               sub_300FD4
