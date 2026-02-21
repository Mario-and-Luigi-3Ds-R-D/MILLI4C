PUSH            {R4,LR}
MOV             R4, R0
MOV             R0, #0
ADD             R1, R4, R0,LSL#2
LDR             R1, [R1,#0x120]
CMP             R1, #0
BEQ             loc_1E1ED4
LDR             R0, =off_6D1648
LDR             R0, [R0]
LDR             R0, [R0,#0xBC]
ADD             R0, R0, #0x15000
ADD             R0, R0, #0x13C
BL              sub_19BD00
NOP
NOP
B               loc_1E1EE0
ADD             R0, R0, #1
CMP             R0, #3
BLT             loc_1E1EA0
LDR             R0, [R4,#0x1A0]
TST             R0, #4
MOVNE           R0, R4
BLNE            sub_1E0C44
MOV             R0, #0
STR             R0, [R4,#0xA4]
STR             R0, [R4]
POP             {R4,PC}
