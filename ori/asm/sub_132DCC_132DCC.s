MOV             R2, #0
MOV             R1, R2
ADD             R3, R0, #2
PUSH            {R4}
SXTB            R12, R1
ADD             R12, R12, R0
LDRB            R4, [R12,#4]
CMP             R4, #0
LDRSBNE         R12, [R12,#8]
LDR             R4, =0x271
MOVEQ           R12, #0
MUL             R12, R12, R4
ADD             R2, R2, R12,LSL#4
SXTB            R12, R1
ADD             R12, R12, R3
ADD             R1, R1, #1
LDRB            R4, [R12,#4]
CMP             R4, #0
LDRSBNE         R12, [R12,#8]
LDR             R4, =0x271
MOVEQ           R12, #0
CMP             R1, #2
MUL             R12, R12, R4
ADD             R2, R2, R12,LSL#6
BLT             loc_132DDC
POP             {R4}
MOV             R0, R2
BX              LR
