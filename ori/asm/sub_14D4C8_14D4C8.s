PUSH            {R4,LR}
LDR             R1, [R0,#0x148]
MOV             R4, R0
LDR             R0, =off_6ACDB8
CMP             R1, #0
STR             R0, [R4]
ADDNE           R0, R4, #0x13C
BLNE            sub_528B1C
ADD             R0, R4, #0x120
NOP
POP             {R4,LR}
SUB             R0, R0, #0x120
B               sub_14CD84
