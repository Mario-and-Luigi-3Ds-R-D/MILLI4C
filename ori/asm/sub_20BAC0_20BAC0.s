PUSH            {R4}
LDR             R1, [R2,#8]
MOV             R1, R1,LSL#20
MOV             R1, R1,LSR#20
ADD             R1, R0, R1,LSL#3
LDR             R1, [R1,#0x2B4]
CMP             R1, #0
ADDNE           R2, R1, #0x10
MOVNE           R1, #0
BEQ             loc_20BB14
ADD             R12, R1, R1,LSL#1
ADD             R4, R1, #1
MOV             R3, R1
AND             R1, R4, #0xFF
ADD             R12, R0, R12,LSL#2
ADD             R4, R2, R3,LSL#2
ADD             R3, R12, #0x800
ADD             R3, R3, #0x2B4
CMP             R1, #4
STR             R3, [R4,#0x20]
BCC             loc_20BAE8
POP             {R4}
MOV             R0, #0
BX              LR
